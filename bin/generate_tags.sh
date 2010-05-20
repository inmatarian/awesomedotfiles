#!/bin/sh

find -iregex ".*\.\(c\|cpp\|h\|lua\|py\)" | ctags -R -L-

