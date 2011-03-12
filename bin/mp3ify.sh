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
    i) INPUT="$OPTARG";;
    o) OUTPUT="$OPTARG";;
    b) BITRATE="$OPTARG";;
    h) usage;;
    ?) usage;;
  esac
done

if test -z "$INPUT"; then
  usage
fi

if test -z "$OUTPUT"; then
  OUTPUT="$INPUT.mp3"
fi

gst-launch-0.10 filesrc location="$INPUT" ! decodebin ! audioconvert ! lame bitrate=$BITRATE ! filesink location="$OUTPUT"

