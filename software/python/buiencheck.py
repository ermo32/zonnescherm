#!/usr/bin/python3
import urllib.request
import calendar

from datetime import datetime, time, timedelta

def check_buien(latitude,longitude):
    url = 'http://gps.buienradar.nl/getrr.php?lat=' + str(latitude) + '&lon=' + str(longitude)
    response = urllib.request.urlopen(url).read()
    data = response.splitlines()
    buien = 0
    prio = 0
    prio_threshold = 8
    rain_threshold = 0
    rain_start = "Onbekend"
    rain_stop = "Onbekend"
	
    time_now = datetime.now().strftime("%H:%M")
    print("Het is nu:   ",time_now)
    print("")
	
    for item in data:
        if item != '':
            prio += 1
            if (int(item.decode()[:3])>rain_threshold) and (buien == 0):
                rain_start = item.decode()[4:9] 
                buien = 1
                avg = int(item.decode()[:3])
                avg_count = 1
            if (int(item.decode()[:3])==0) and (buien == 1):
                rain_stop = item.decode()[4:9]  
                duur = datetime.strptime(rain_stop, "%H:%M") - datetime.strptime(rain_start, "%H:%M")
                print("Regen begint om",rain_start,"en duurt",duur,"met een gemiddelde sterkte van",round(avg/avg_count,1))
                buien = 0
            if buien == 1:
                avg = avg + int(item.decode()[:3])
                avg_count = avg_count + 1
            #print(item,buien)
    if buien == 1:
        print("Regen begint om",rain_start,"en duurt onbekend lang, met een gemiddelde sterkte van",round(avg/avg_count,1))

# Main program
# Location data
# latitude (+N -S):
lat = 52.309318
# longitude (+E -W):
lon = 6.746323

# get current date and time

check_buien(lat,lon)



