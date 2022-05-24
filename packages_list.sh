#!/bin/bash

#######################################################################
# Script name   : packages_list.sh
# Description   : Generates files with lists of packages 
#                 explicitly installed in the system                                                                      
# Created date  : 24.05.2022
# Modified date : 24.05.2022
# Author        : Marek Tomczewski                                                
# Email         : marek.tomczewski@gmail.com                                              
#######################################################################

pacman -Qqen > packages.txt
pacman -Qqem > packages_AUR.txt
