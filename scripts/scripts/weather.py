import pyowm
# -*- coding: utf-8 -*-

owm = pyowm.OWM('1e2a5c80bec78c8269fdd3b4f7eb2930') 
observation = owm.weather_at_place("Bangalore, India")
w = observation.get_weather()
temperature = w.get_temperature()
temperature = temperature['temp_max'] - 273.15
status = w.get_status();
icon_code = w.get_weather_code()
icon = ""
print status, int(temperature) 


