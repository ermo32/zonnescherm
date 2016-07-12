#include <ESP8266WiFi.h>
#include <WiFiClient.h>
#include <ESP8266WebServer.h>
#include <ESP8266mDNS.h>

const char* ssid = "dd-wrt";
const char* password = "BCIRWyyy";

ESP8266WebServer server(80);

const int relay_1_onoff  = 12; //D6
const int relay_1_updown = 13; //D7
const int relay_2_onoff  = 14; //D5
const int relay_2_updown = 15; //D8

const int switch_1_up   = 0;  //D3
const int switch_1_down = 2;  //D4
const int switch_2_up   = 5;  //D1
const int switch_2_down = 4;  //D2

void handleRoot() {
  server.send(200, "text/plain", "hello Erik from esp8266!");
  //digitalWrite(led, 0);
}

void screen_1_up() 
{
  server.send(200, "text/plain", "screen 1 up");
  digitalWrite(relay_1_updown, 1);
  delay(500);
  digitalWrite(relay_1_onoff,1);
  delay(30000);
  digitalWrite(relay_1_onoff,0);
  delay(500);
  digitalWrite(relay_1_updown, 0);
}

void screen_1_down()
{
  server.send(200, "text/plain", "screen 1 down");
  digitalWrite(relay_1_updown, 0);
  delay(500);
  digitalWrite(relay_1_onoff,1);
  delay(30000);
  digitalWrite(relay_1_onoff,0);
  delay(500);
  digitalWrite(relay_1_updown, 0);
}

void screen_2_up() 
{
  server.send(200, "text/plain", "screen 2 up");
  digitalWrite(relay_2_updown, 1);
  delay(500);
  digitalWrite(relay_2_onoff,1);
  delay(30000);
  digitalWrite(relay_2_onoff,0);
  delay(500);
  digitalWrite(relay_2_updown, 0);
}

void screen_2_down()
{
  server.send(200, "text/plain", "screen 2 down");
  digitalWrite(relay_2_updown, 0);
  delay(500);
  digitalWrite(relay_2_onoff,1);
  delay(30000);
  digitalWrite(relay_2_onoff,0);
  delay(500);
  digitalWrite(relay_2_updown, 0);
}

void screen_stop()
{
  server.send(200, "text/plain", "screen stopped");
  digitalWrite(relay_1_onoff,  0);
  digitalWrite(relay_1_updown, 0);
  digitalWrite(relay_2_onoff,  0);
  digitalWrite(relay_2_updown, 0);
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
  WiFi.begin(ssid, password);

// Set a static IP (optional)  
  IPAddress ip(192, 168, 0, 55);
  IPAddress gateway(192, 168, 0, 1);
  IPAddress subnet(255, 255, 255, 0);
  WiFi.config(ip, gateway, subnet);
  
  Serial.println("");

  // Wait for connection
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  Serial.println("");
  Serial.print("Connected to ");
  Serial.println(ssid);
  Serial.print("IP address: ");
  Serial.println(WiFi.localIP());

  if (MDNS.begin("esp8266")) {
    Serial.println("MDNS responder started");
  }

  server.on("/", handleRoot);

  server.on("/inline", [](){
    server.send(200, "text/plain", "this works as well");
  });

  server.on("/screen=up1",   screen_1_up);
  server.on("/screen=down1", screen_1_down);
  server.on("/screen=up2",   screen_2_up);
  server.on("/screen=down2", screen_2_down);
  server.on("/screen=stop",  screen_stop);

  server.onNotFound(handleNotFound);

  server.begin();
  Serial.println("HTTP server started");
}

void loop(void){
  server.handleClient();
  if (digitalRead(switch_2_up)==LOW) {
    screen_2_up();
  }
  if (digitalRead(switch_2_down)==LOW) {
    screen_2_down();
  }
  if (digitalRead(switch_1_up)==LOW) {
    screen_1_up();
  }
  if (digitalRead(switch_1_down)==LOW) {
    screen_1_down();    
  }




  
}
