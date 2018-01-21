#include <ESP8266WiFi.h>
#include <WiFiClient.h>

#include <DNSServer.h>
#include <ESP8266WebServer.h>
#include <WiFiManager.h>

ESP8266WebServer server(80);

const int relay_1_onoff  = 12; //D6
const int relay_1_updown = 13; //D7
const int relay_2_onoff  = 14; //D5
const int relay_2_updown = 15; //D8

const int switch_1_up   = 0;  //D3
const int switch_1_down = 2;  //D4
const int switch_2_up   = 5;  //D1
const int switch_2_down = 4;  //D2

const int time_on       = 10000; //10000 ms = 10 s
const int time_dead     = 100;   //100 ms between the relay controls

unsigned long sunshade_1_millis  = 0;
unsigned long sunshade_2_millis  = 0;

enum state_type {idle, wait1, wait2, wait3};
enum status_type {unknown, up, down, stop};

status_type sw_ctrl_1 = unknown;
status_type sw_ctrl_2 = unknown;

String status_1 = "unknown";
String status_2 = "unknown";

state_type state_1 = idle;
state_type state_2 = idle;

void handleRoot() {
  server.send(200, "text/plain", "hello Erik from esp8266!");
  //digitalWrite(led, 0);
}
 
void screen_1_up(){
  server.send(200, "text/plain", "OK");
  sw_ctrl_1 = up;
}
void screen_1_down(){
  server.send(200, "text/plain", "OK");
  sw_ctrl_1 = down;
}
void screen_2_up(){
  server.send(200, "text/plain", "OK");
  sw_ctrl_2 = up;
}
void screen_2_down(){
  server.send(200, "text/plain", "OK");
  sw_ctrl_2 = down;
}
void screen_stop()
{
  server.send(200, "text/plain", "OK");
  sw_ctrl_1 = stop;
  sw_ctrl_2 = stop;
}
void screen_status()
{
  server.send(200, "text/plain", "screen_1="+status_1+",screen_2="+status_2);
}


void handleNotFound(){
  String message = "File Not Found\n\n";
  message += "URI: ";
  message += server.uri();
  message += "\nMethod: ";
  message += (server.method() == HTTP_GET)?"GET":"POST";
  message += "\nArguments: ";
  message += server.args();
  message += "\n";
  for (uint8_t i=0; i<server.args(); i++){
    message += " " + server.argName(i) + ": " + server.arg(i) + "\n";
  }
  server.send(404, "text/plain", message);
}

void setup(void){
  pinMode(relay_1_onoff,  OUTPUT);
  pinMode(relay_1_updown, OUTPUT);
  pinMode(relay_2_onoff,  OUTPUT);
  pinMode(relay_2_updown, OUTPUT);

  pinMode(switch_1_up,   INPUT);
  pinMode(switch_1_down, INPUT);
  pinMode(switch_2_up,   INPUT);
  pinMode(switch_2_down, INPUT);
  
  screen_stop();
  
  Serial.begin(115200);
  
  WiFiManager wifiManager;
  //reset saved settings
  wifiManager.resetSettings();
  wifiManager.autoConnect("AutoConnectAP");
  //if you get here you have connected to the WiFi
  Serial.println("connected...yeey :)");
  Serial.println("");

  server.on("/", handleRoot);

  server.on("/inline", [](){
    server.send(200, "text/plain", "this works as well");
  });

  server.on("/screen=up1",    screen_1_up);
  server.on("/screen=down1",  screen_1_down);
  server.on("/screen=up2",    screen_2_up);
  server.on("/screen=down2",  screen_2_down);
  server.on("/screen=stop",   screen_stop);
  server.on("/screen=status", screen_status);

  server.onNotFound(handleNotFound);

  server.begin();
  Serial.println("HTTP server started");
}

void loop(void){
  server.handleClient();
   
  switch (state_1)
  {
    case idle:  if ((digitalRead(switch_1_up)==LOW) or (sw_ctrl_1 == up))
                {
                  
                  digitalWrite(relay_1_updown,1);
                  sunshade_1_millis = millis()+time_dead;
                  status_1 = "up";
                  sw_ctrl_1 = unknown;
                  state_1 = wait1;
                }
                else if ((digitalRead(switch_1_down)==LOW) or (sw_ctrl_1 == down))
                {
                  digitalWrite(relay_1_onoff,1);
                  sunshade_1_millis = millis()+time_on;
                  status_1 = "down";
                  sw_ctrl_1 = unknown;
                  state_1 = wait3;
                }
                break;
    case wait1: if (millis() > sunshade_1_millis)
                {
                  digitalWrite(relay_1_onoff,1);
                  sunshade_1_millis = millis()+time_on;
                  state_1 = wait2;
                };    
                break;
    case wait2: if (millis() > sunshade_1_millis)
                {
                  digitalWrite(relay_1_onoff,0);
                  sunshade_1_millis = millis()+time_dead;
                  state_1 = wait3;
                };    
                break;   
    case wait3: if (millis() > sunshade_1_millis)
                {
                  digitalWrite(relay_1_onoff,0);
                  digitalWrite(relay_1_updown,0);
                  state_1 = idle;
                };    
                break;
    default:    break;
  }
  if (sw_ctrl_1 == stop)
    {
      digitalWrite(relay_1_onoff,0);
      digitalWrite(relay_1_updown,0);
      state_1 = idle;
    }

  switch (state_2)
  {
    case idle:  if ((digitalRead(switch_2_up)==LOW) or (sw_ctrl_2 == up))
                {
                  digitalWrite(relay_2_updown,1);
                  sunshade_2_millis = millis()+time_dead;
                  status_2 = "up";
                  sw_ctrl_2 = unknown;
                  state_2 = wait1;
                }
                else if ((digitalRead(switch_2_down)==LOW) or (sw_ctrl_2 == down))
                {
                  digitalWrite(relay_2_onoff,1);
                  sunshade_2_millis = millis()+time_on;
                  status_2 = "down";
                  sw_ctrl_2 = unknown;
                  state_2 = wait3;
                }
                break;
    case wait1: if (millis() > sunshade_2_millis)
                {
                  digitalWrite(relay_2_onoff,1);
                  sunshade_2_millis = millis()+time_on;
                  state_2 = wait2;
                };    
                break;
    case wait2: if (millis() > sunshade_2_millis)
                {
                  digitalWrite(relay_2_onoff,0);
                  sunshade_2_millis = millis()+time_dead;
                  state_2 = wait3;
                };    
                break;   
    case wait3: if (millis() > sunshade_2_millis)
                {
                  digitalWrite(relay_2_onoff,0);
                  digitalWrite(relay_2_updown,0);
                  state_2 = idle;
                };    
                break;
    default:    break;
  }
  if (sw_ctrl_2 == stop)
    {
      digitalWrite(relay_2_onoff,0);
      digitalWrite(relay_2_updown,0);
      state_2 = idle;
    }


}
