## Linux kernels

### Linux

```sh
sudo pacman -S linux linux-headers
```

### Linux LTS

```sh
sudo pacman -S linux-lts linux-lts-headers
```

## Graphics drivers

### NVIDIA DKMS
After installing all planned kernels and their headers, install DKMS. It will add hook for kernel update to recompile NVIDIA drivers for graphics card.

```sh
sudo pacman -S nvidia-dkms
```

## GRUB configuration

From `/etc/default/grub` remove `quiet` from `GRUB_CMDLINE_LINUX_DEFAULT`, change default kernel selected using menu entry name:

```
GRUB_DEFAULT="Advanced options for ArcoLinux Linux>ArcoLinux Linux, with Linux linux"
```

and run:

```sh
update-grub
```

Better way to **reorder latest and LTS kernel versions** is changing

```
version_sort -r
```

to

```
version_sort -V
```

in `/etc/grub.d/10_linux` and running

```sh
update-grub
```

### Show Windows instance from specific partition only

In `/etc/grub.d/30_os-prober` modify command with definition of **OSPROBED** by filtering results of `os-prober`

```
DISK_SERIAL="50026B7685FECDAE"
WIN11_DISK="`lsblk -N | grep $DISK_SERIAL | cut -d' ' -f1`"
OSPROBED="`os-prober | grep $WIN11_DISK | tr ' ' '^' | paste -s -d ' '`"
```

Using specific DISK_SERIAL will make selection work regardless of order of disks during boot.