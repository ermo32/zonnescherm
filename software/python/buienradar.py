#!/usr/bin/python
import urllib
import string
import RPi.GPIO as GPIO
import threading
import time

status = False

def screens_up():
  response = urllib.urlopen('http://192.168.0.55/screen=up1').read()
  response = urllib.urlopen('http://192.168.0.55/screen=up2').read()

def init():
  GPIO.setmode(GPIO.BOARD)
  GPIO.setup(23, GPIO.OUT)
  GPIO.output(23, True)

def check_buien():
    print ("Buien informatie ophalen.....")
    response = urllib.urlopen('http://gps.buienradar.nl/getrr.php?lat=52.292410&lon=6.756525').read()
    data = response.split('\n')
    buien = False
    prio = 0
    prio_threshold = 8
    #data[0] = '020|20:50\r'
    for item in data:
      if item != '':
        print 'Prio :',prio,'Quantity :',item.split("|")[0],'at',item.split("|")[1]
        prio = prio + 1
        if item.split("|")[0] != "000":
          print "Rain at",item.split("|")[1],'prio',prio
          if prio < prio_threshold:
            buien = True 
    print 'Good bye'
    return buien 

init()
if check_buien():
  GPIO.output(23, True)
  screens_up()
else:
  GPIO.output(23, False)
#GPIO.cleanup()
