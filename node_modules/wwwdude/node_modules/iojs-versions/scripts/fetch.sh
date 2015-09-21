#!/usr/bin/env bash

set -e

curl -L https://iojs.org/dist/ -s \
  | egrep "</a>" \
  | egrep -o '[0-9]+\.[0-9]+\.[0-9]+' \
  | sort -u -k 1,1n -k 2,2n -k 3,3n -t .
