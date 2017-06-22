#!/bin/bash
SCRIPT_VERSION=1.0
AUTHOR="eniconovich"
# This script returns the redhat-release version requested. If no specific code requested, the full decimal number is returned (6.9 or 5.11 etc.)
# Arguments:
# {NULL} 1 can return [5|6|7]\.*[0-9]{0,2} or [5|6|7] or null/empty
#  MAJOR 2 should only ever return a 5, 6, 7 or null/empty
#  MINOR 3 can return 0-99 or null/empty
RHEL_VERSION=""
if [ -f /etc/redhat-release ]; then # check that the version file exists
  if [ ! -z "$1" ]; then # if an argument was provided
    if [ `echo "$1" |grep -i "MAJOR"` ]; then RHEL_VERSION=$(cat /etc/redhat-release |sed -nr 's/.*(([5|6|7]{1})\.*([0-9]{0,2})).*/\2/p'); fi # this is option 2
    if [ `echo "$1" |grep -i "MINOR"` ]; then RHEL_VERSION=$(cat /etc/redhat-release |sed -nr 's/.*(([5|6|7]{1})\.*([0-9]{0,2})).*/\3/p'); fi # this is option 3
  else
    RHEL_VERSION=$(cat /etc/redhat-release |sed -nr 's/.*(([5|6|7]{1})\.*([0-9]{0,2})).*/\1/p') # this is option 1
  fi  
fi
if [ ! -z "$RHEL_VERSION" ]; then # check if value returned is not null
  echo $RHEL_VERSION
  exit 0
else
  exit 1 # if both other checks did not succeed then the version was not able to be found so throw this error
fi