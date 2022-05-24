#!/bin/bash

sudo pacman -S --needed - < packages.txt
yay -S --needed - < packages_AUR.txt
