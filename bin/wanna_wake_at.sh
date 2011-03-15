#!/bin/sh

d2s() { date --date "$*" +%s; }
s2d() { date --date "1970-01-01 $1 sec" "+%I:%M %p"; }
WAKETIME=$(d2s $*)
calc() {
  SLEEPTIME=$(d2s `date --date "1970-01-01 $*AM"`)
  BEDTIME=$(($WAKETIME-$SLEEPTIME))
  s2d $BEDTIME
}
# Increments of 90 minutes, +15 minutes to fall asleep.
TIME1=$(calc "9:15")
TIME2=$(calc "7:45")
echo "So go to bed at $TIME1, or $TIME2."

