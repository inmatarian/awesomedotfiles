#!/usr/bin/python

import sys
import urllib
from xml.dom import minidom
from string import replace

# Configure here
KLGA_URL = "http://www.weather.gov/xml/current_obs/KLGA.xml"
FORECAST_URL = "http://weather.noaa.gov/pub/data/forecasts/city/ny/new_york.txt"

def get_weather_from_noaa( url ):
    try:
        handler = urllib.urlopen(url)
        dom = minidom.parse(handler)    
        handler.close()
    except:
        return {}
    data_structure = ('suggested_pickup', 'suggested_pickup_period',
        'location', 'station_id', 'latitude', 'longitude', 'observation_time',
        'observation_time_rfc822', 'weather', 'temperature_string', 'temp_f',
        'temp_c', 'relative_humidity', 'wind_string', 'wind_dir',
        'wind_degrees', 'wind_mph', 'wind_gust_mph', 'pressure_string',
        'pressure_mb', 'pressure_in', 'dewpoint_string', 'dewpoint_f',
        'dewpoint_c', 'heat_index_string', 'heat_index_f', 'heat_index_c',
        'windchill_string', 'windchill_f', 'windchill_c', 'icon_url_base',
        'icon_url_name', 'two_day_history_url', 'ob_url' )
    weather_data = {}
    current_observation = dom.getElementsByTagName('current_observation')[0]
    for tag in data_structure:
        try:
            elem = current_observation.getElementsByTagName(tag)[0]
            weather_data[tag] = elem.firstChild.data
        except IndexError:
            pass
    dom.unlink()
    return weather_data

def print_useful_info( url ):
    data = get_weather_from_noaa( url )
    print "Temperature: %s" % data.get('temperature_string','')
    print "Conditions: %s" % data.get('weather','')
    print "Wind: %s" % data.get('wind_string','')
    print "Windchill: %s" % data.get('windchill_string','')
    print "Pressure: %s" % data.get('pressure_in','')

def get_forecast_from_noaa( url ):
    try:
        lines = []
        handler = urllib.urlopen(url)
        for line in handler:
            lines.append( line )
        handler.close()
        lines = lines[5:]
        r = ""
        for line in lines:
            if line == "": continue;
            s = replace(line[1:], "chance of precipitation.", "chance.")
            r = r + s
        return r
    except Exception, e:
        return "No forecast (%s)" % e

def print_forecast_from_noaa( url ):
    print get_forecast_from_noaa( url )

if __name__ == "__main__":
    print_useful_info( KLGA_URL );
    print_forecast_from_noaa( FORECAST_URL );

