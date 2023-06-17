# KVM

Follow this [guide](https://computingforgeeks.com/install-kvm-qemu-virt-manager-arch-manjar/) to install QEMU/KVM

ArchWiki article about KVM is [here](https://wiki.archlinux.org/title/KVM).

# Enable nested virtualization

Create `/etc/modprobe.d/kvm-intel.conf` file with content

```sh
options kvm-intel nested=1
```

Reboot and verify featury is activated by

```sh
systool -m kvm_intel -v | grep nested
```
Output should include
```sh
nested              = "Y"
```

# Selecting display after setting primary GPU to use vfio-pci

I needed to put file */etc/X11/xorg.conf.d/10-amd.conf*
```sh
Section "Device"
	Identifier "AMD Radeon"
	Driver "amdgpu"
	BusID "PCI:10:0:0"
EndSection
```

where *10:0:0* is taken from output of 
```sh
lspci -nnk
```
with numbers in first column converted from hex to decimal.

# VirtManager

### Potential problems

How to fix "network 'default' is not active" error in libvirt:
```sh
sudo virsh net-start default
sudo virsh net-list --all
sudo virsh net-autostart default
sudo virsh net-list --all
```

### Allow user perform actions with VM or Docker

```sh
sudo usermod -a -G docker $USER
sudo usermod -a -G kvm $USER
sudo usermod -a -G libvirt $USER
```

Also need to set environment variable on startup. Add this to `~/.zshrc` and/or `~/.bashrc`

```sh
export LIBVIRT_DEFAULT_URI=qemu:///system
```

### Mouse and keyboard

https://passthroughpo.st/using-evdev-passthrough-seamless-vm-input/

Professional paid solution:
[Synergy](https://symless.com/synergy)