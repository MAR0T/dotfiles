#!/bin/bash

#######################################################################
# Script name   : monitor_switch_DP.sh
# Description	:                                                                                 
# Created date  : 26.02.2023
# Modified date : 26.02.2023
# Author       	: Marek Tomczewski                                                
# Email         : marek.tomczewski@gmail.com                                           
#######################################################################

sudo modprobe i2c-dev
# Display 3 = middle screen
# 60 = input
# 0x0f = DP
# 0x11 = HDMI

sudo ddcutil -d 3 setvcp 60 0x0f

