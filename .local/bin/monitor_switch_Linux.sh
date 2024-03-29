#!/bin/bash

#######################################################################
# Script name   : monitor_switch_Linux.sh
# Description	:                                                                                 
# Created date  : 25.03.2023
# Modified date : 11.03.2024
# Author       	: Marek Tomczewski                                                
# Email         : marek.tomczewski@gmail.com                                           
#######################################################################

sudo modprobe i2c-dev
# Display 2 = left screen
# 60 = input
# 0x0f = DP
# 0x11 = HDMI

sudo ddcutil -d 3 setvcp 60 0x11
sudo ddcutil -d 2 setvcp 60 0x11
sudo ddcutil -d 1 setvcp 60 0x11
