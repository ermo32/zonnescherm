#!/usr/bin/python3
import urllib.request
import calendar
import RPi.GPIO as GPIO

from datetime import datetime, time, timedelta
from math import cos, sin, acos as arccos, asin as arcsin, tan as tg, degrees, radians

def check_buien(latitude,longitude):
    print("Buien informatie ophalen.....")
    url = 'http://gps.buienradar.nl/getrr.php?lat=' + str(latitude) + '&lon=' + str(longitude)
    response = urllib.request.urlopen(url).read()
    data = response.splitlines()
    buien = False
    prio = 0
    prio_threshold = 8
    rain_threshold = 0

    for item in data:
        if item != '':
            prio += 1
            if (int(item.decode()[:3])>rain_threshold) and (prio < prio_threshold):
                buien = True
    return buien

def init():
  GPIO.setmode(GPIO.BOARD)
  GPIO.setup(23, GPIO.OUT)
  GPIO.setup(15, GPIO.OUT)
  #GPIO.output(23, True)
  #GPIO.output(15, True)

def screens_up():
  response = urllib.request.urlopen('http://192.168.0.55/screen=up1').read()
  response = urllib.request.urlopen('http://192.168.0.55/screen=up2').read()

def mod(a,b):
  return a % b

def isLeapYear(year):
  return (year % 4 == 0 and year % 100 != 0) or year % 400 == 0

def getDayNumber(year, month, day):
  cnt = 0
  for t in range(1900,year):
    if isLeapYear(t):
      cnt += 366
    else:
      cnt += 365
  for t in range(1,month):
    cnt += calendar.monthrange(year, t)[1]
  return cnt + day + 1

def getHHMMSS(h):
  hh = int(h)
  mm = (h - hh) * 60
  ss = int(0.5 + (mm - int(mm)) * 60)
  return "{0:2d}:{1:02d}:{2:02d}" . format(hh, int(mm), ss)


# based on: http://www.srrb.noaa.gov/highlights/sunrise/calcdetails.html
def getSunriseAndSunset(lat, lon, dst, year, month, day):
  localtime = 13.00
  b2 = lat
  b3 = lon
  b4 = dst
  b5 = localtime / 24
  d30 = getDayNumber(year, month, day)
  e30 = b5
  f30 = d30 + 2415018.5 + e30 - b4 / 24
  g30 = (f30 - 2451545) / 36525
  q30 = 23 + (26 + ((21.448 - g30 * (46.815 + g30 * (0.00059 - g30 * 0.001813)))) / 60) / 60
  r30 = q30 + 0.00256 * cos(radians(125.04 - 1934.136 * g30))
  j30 = 357.52911 + g30 * (35999.05029 - 0.0001537 * g30)
  k30 = 0.016708634 - g30 * (0.000042037 + 0.0000001267 * g30)
  l30 = sin(radians(j30)) * (1.914602 - g30 * (0.004817 + 0.000014 * g30)) + sin(radians(2 * j30)) * (0.019993 - 0.000101 * g30) + sin(radians(3 * j30)) * 0.000289
  i30 = mod(280.46646 + g30 * (36000.76983 + g30 * 0.0003032), 360)
  m30 = i30 + l30
  p30 = m30 - 0.00569 - 0.00478 * sin(radians(125.04 - 1934.136 * g30))
  t30 = degrees(arcsin(sin(radians(r30)) * sin(radians(p30))))
  u30 = tg(radians(r30 / 2)) * tg(radians(r30 / 2))
  v30 = 4 * degrees(u30 * sin(2 * radians(i30)) - 2 * k30 * sin(radians(j30)) + 4 * k30 * u30 * sin(radians(j30)) * cos(2 * radians(i30)) - 0.5 * u30 * u30 * sin(4 * radians(i30)) - 1.25 * k30 * k30 * sin(2 * radians(j30)))
  w30 = degrees(arccos(cos(radians(90.833)) / (cos(radians(b2)) * cos(radians(t30))) - tg(radians(b2)) * tg(radians(t30))))
  x30 = (720 - 4 * b3 - v30 + b4 * 60) / 1440
  y30 = (x30 * 1440 - w30 * 4) / 1440
  w30 = degrees(arccos(cos(radians(90.833)) / (cos(radians(b2)) * cos(radians(t30))) - tg(radians(b2)) * tg(radians(t30))))
  x30 = (720 - 4 * b3 - v30 + b4 * 60) / 1440
  z30 = (x30 * 1440 + w30 * 4) / 1440
  sunrise = y30 * 24
  sunset = z30 * 24
  return (sunrise, sunset)



# Main program
GPIO.setwarnings(False)
init()
# Location data
# latitude (+N -S):
lat = 52.292410
# longitude (+E -W):
lon = 6.756525

status = urllib.request.urlopen('http://192.168.0.55/screen=status').read().decode("utf-8") 
print(status)

# get current date and time
now = datetime.now()
tt = now.timetuple()

if check_buien(lat,lon):
    print("Buien opkomst")
    GPIO.output(23, True)
    if ('down' in status):
      screens_up()
else:
    print("Geen buien opkomst")
    GPIO.output(23, False)

dst = 2
(sunrise, sunset) = getSunriseAndSunset(lat, lon, dst, tt[0], tt[1], tt[2])

sun_rise_string = datetime.strptime(now.strftime("%d/%m/%y ")+getHHMMSS(sunrise), "%d/%m/%y %H:%M:%S")
sun_set_string  = datetime.strptime(now.strftime("%d/%m/%y ")+getHHMMSS(sunset),  "%d/%m/%y %H:%M:%S") - timedelta(hours=1)
print("current time =",now)
print("sun rise     =",sun_rise_string)
print("sun set      =",sun_set_string)

if ((now > sun_rise_string) and (now < sun_set_string)):
  print("De zon is op.")
  GPIO.output(15, True)
else:
  print("De zon is onder.")
  if ('down' in status):
    screens_up()
  GPIO.output(15, False)

