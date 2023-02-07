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
