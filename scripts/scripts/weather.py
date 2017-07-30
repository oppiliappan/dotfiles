#!/usr/bin/python

import urllib.request, json
import os

city = "Bangalore"
api_key = "1e2a5c80bec78c8269fdd3b4f7eb2930"
units = "Metric"
unit_key = "C"

weather = eval(str(urllib.request.urlopen("http://api.openweathermap.org/data/2.5/weather?q={}&APPID={}&units={}".format(city, api_key, units)).read())

info = weather["weather"][0]["description"].capitalize()
temp = int(float(weather["main"]["temp"]))

print("%s, %i °%s" % (info, temp, unit_key))
