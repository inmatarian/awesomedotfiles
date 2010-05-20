#!/bin/sh
# remind_me - a simple reminder
# usage: remind_me now+1minutes "Sup."  

mytime=$1
shift
mycmd="notify-send -u low -i gtk-dialog-info \"$*\""
echo $mycmd | at $mytime 2>/dev/null

