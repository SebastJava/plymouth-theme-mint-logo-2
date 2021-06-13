#!/bin/bash

# Preview Plymouth Splash
# by _khAttAm_
# www.khattam.info
# License: GPL v3
# source: https://gist.github.com/nextgenthemes/5396198
# modified by Sébastien Bouchard <sebastjava@hotmail.ca>

chk_root () {
  if [ ! $( id -u ) -eq 0 ]; then
    echo; echo; echo; echo; echo "Must be run as root!"
    exit
  fi
}
chk_root

DURATION=$1
if [ $# -ne 1 ]; then
    DURATION=10
fi

plymouthd; plymouth --show-splash; sleep $DURATION; plymouth quit
