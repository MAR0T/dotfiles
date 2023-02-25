#!/bin/bash

sudo modprobe vfio_pci
sudo driverctl --nosave set-override 0000:01:00.0 vfio-pci
sudo driverctl --nosave set-override 0000:01:00.1 vfio-pci
