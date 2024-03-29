#!/bin/bash

#######################################################################
# Script name   : monitor_switch_Windows.sh
# Description	:                                                                                 
# Created date  : 25.03.2023
#sudo ddcutil -d 1 setvcp 60 0x0f
# Modified date : 11.03.2024
# Author       	: Marek Tomczewski                                                
# Email         : marek.tomczewski@gmail.com                                           
#######################################################################

sudo modprobe i2c-dev
# Display 2 = left screen
# 60 = input
# 0x0f = DP
# 0x11 = HDMI_1
# 0x12 = HDMI_2

sudo ddcutil -d 3 setvcp 60 0x12
sudo ddcutil -d 2 setvcp 60 0x0f
#sudo ddcutil -d 1 setvcp 60 0x11

