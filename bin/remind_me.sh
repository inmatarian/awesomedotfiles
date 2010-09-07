#!/bin/sh
# remind_me - a simple reminder
# usage: remind_me now+1minutes "Sup."  

if [ $# -lt 2 ]
then
  echo "usage: remind_me when message"
  exit 1
fi

mytime=$1
shift
mycmd="notify-send -u low -i gtk-dialog-info \"$*\""
echo $mycmd | at $mytime 2>/dev/null

