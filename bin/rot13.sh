#!/bin/sh
if [ $# -eq 0 ]; then
  tr '[a-m][n-z][A-M][N-Z]' '[n-z][a-m][N-Z][A-M]'
else
  echo $* | tr '[a-m][n-z][A-M][N-Z]' '[n-z][a-m][N-Z][A-M]'
fi

