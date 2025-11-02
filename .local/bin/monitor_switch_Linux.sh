#!/bin/bash

#######################################################################
# Script name   : monitor_switch_Linux.sh
# Description	:                                                                                 
# Created date  : 25.03.2023
# Modified date : 02.11.2025
# Author       	: Marek Tomczewski                                                
# Email         : marek.tomczewski@gmail.com                                           
#######################################################################

modprobe i2c-dev
# Display 2 = left screen
# 60 = input
# 0x0f = DP
# 0x11 = HDMI

ddcutil -d 3 setvcp 60 0x11
ddcutil -d 2 setvcp 60 0x11
ddcutil -d 1 setvcp 60 0x11
