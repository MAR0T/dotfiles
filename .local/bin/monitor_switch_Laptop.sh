#!/bin/bash

#######################################################################
# Script name   : monitor_switch_Windows.sh
# Description	:                                                                                 
# Created date  : 25.03.2023
# Modified date : 28.04.2023
# Author       	: Marek Tomczewski                                                
# Email         : marek.tomczewski@gmail.com                                           
#######################################################################

sudo modprobe i2c-dev
# Display 2 = left screen
# 60 = input
# 0x0f = DP
# 0x11 = HDMI-1
# 0x12 = HDMI-2

sudo ddcutil -d 2 setvcp 60 0x12

