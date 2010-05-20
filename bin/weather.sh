#!/bin/sh
ZIPCODE=10465

get_weather() {
  links -dump "http://google.com/search?q=weather+${1:-$ZIPCODE}" | grep -A 5 -m 1 '^ *Weather for' | grep -v 'Add to'
}

if [ $# -eq 1 ]; then
  if (echo "$1" | egrep -q '^[0-9][0-9][0-9][0-9][0-9]$'); then
    get_weather $1
  fi
else
  get_weather $ZIPCODE
fi
