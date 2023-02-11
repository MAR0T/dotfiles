# KVM

Follow this [guide](https://computingforgeeks.com/install-kvm-qemu-virt-manager-arch-manjar/) to install QEMU/KVM

Create `/etc/modprobe.d/kvm-intel.conf` file with content

```
options kvm-intel nested=1
```

# VirtManager

### Potential problems

How to fix "network 'default' is not active" error in libvirt:
```
sudo virsh net-start default
sudo virsh net-list --all
```

### Allow user perform actions with VM or Docker

```sh
sudo usermod -a -G docker $USER
sudo usermod -a -G kvm $USER
sudo usermod -a -G libvirt $USER
```