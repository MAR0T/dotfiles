#!/bin/bash

sudo systemctl set-property --runtime -- user.slice AllowedCPUs=18-23
sudo systemctl set-property --runtime -- system.slice AllowedCPUs=18-23
sudo systemctl set-property --runtime -- init.scope AllowedCPUs=18-23
