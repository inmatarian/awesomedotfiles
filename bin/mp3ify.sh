#!/bin/sh

INPUT=
OUTPUT=
BITRATE=80

usage() {
  echo "usage: $0 -i input -o output -b bitrate"
  exit 1
}

while getopts “hi:o:b:” OPTION
do
  case $OPTION in
    i) INPUT=$OPTARG;;
    o) OUTPUT=$OPTARG;;
    b) BITRATE=$OPTARG;;
    h) usage;;
    ?) usage;;
  esac
done

gst-launch-0.10 filesrc location=$INPUT ! decodebin ! audioconvert ! lame bitrate=$BITRATE ! filesink location=$OUTPUT

