#!/bin/bash
# /etc/init.d/startup-rpi-servers.py
### BEGIN INIT INFO
# Provides:          sample.py
# Required-Start:    $remote_fs $syslog
# Required-Stop:     $remote_fs $syslog
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: Start daemon at boot time
# Description:       Enable service provided by daemon.
### END INIT INFO

# Just run the setup, build should already have been done
cd /home/pi/dev/rpi-server
docker-compose up -d

