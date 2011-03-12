#!/usr/bin/ruby

# Get your own location from weather.noaa.gov
default_location = "http://weather.noaa.gov/pub/data/forecasts/city/ny/new_york.txt"

def getFrom( location )
  outp = `curl -s #{location}`
  outp.each { |line|
    puts line[1..-1] if line =~ /^\./
  }
end

if ARGV.length > 0 then
  ARGV.each { |location|
    getFrom location
    puts ""
  }
else
  getFrom default_location
end

