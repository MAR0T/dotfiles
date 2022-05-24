#!/bin/bash

#######################################################################
# Script name   : packages_reinstall.sh
# Description   : Installs packages listed in files 
#                 generated using packages_list.sh script 
#                 in Arch based Linux using pacman & yay                                                                         
# Created date  : 24.05.2022
# Modified date : 24.05.2022
# Author        : Marek Tomczewski                                                
# Email         : marek.tomczewski@gmail.com                                              
#######################################################################

sudo pacman -S --needed - < packages.txt
yay -S --needed - < packages_AUR.txt
