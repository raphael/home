#!/bin/bash

# Start conky on both displays
function connect() {
  killall conky
  conky -d -c /home/raphael/.conky/main-monitor.rc
  conky -d -c /home/raphael/.conky/external-monitor.rc
  logger 'Conky restarted in dual display mode'
  echo 'Conky restarted in dual display mode'
}

# Start conky on main display
function disconnect() {
  killall conky
  conky -d -c /home/raphael/.conky/main-monitor.rc
  logger 'Conky restarted in single display mode'
  echo 'Conky restarted in single display mode'
}

DP=$(find /sys/class/drm/*/status | grep DP-2)
if [ x$DP == "x" ]
then
  disconnect
else
  connect
fi

