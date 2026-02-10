# dotfiles

My Linux configuration files

## Install base system
 
1. Download Arch ISO from [https://archlinux.org/download/](https://archlinux.org/download/)

### Manual installation

1. Make font bigger
```
setfont [ter-v16b|ter-v24b|ter-v32b]
```

2. Synchronize time
```
timedatectl set-ntp true
timedatectl
hwclock --systohc
```

3. Partition disk
```
cfdisk
```

 * **gpt** partition table
 * setup partitions, write to disk and quit

| Device | Type | Size |
|---|---|---|
| /dev/vda1 | EFI System | 512M or 1G for multiple kernels |
| /dev/vds2 | Linux filesystem | Rest of available space |

 * create filesystems

```
mkfs.fat -F32 /dev/vda1
mkfs.btrfs -L <label> /dev/vda2
```

 * create btrfs subvolumes

```
mount /dev/vds2 /mnt
btrfs subvolume create /mnt/@

btrfs subvolume create /mnt/@home
btrfs subvolume create /mnt/@root

btrfs subvolume create /mnt/@var_cache
btrfs subvolume create /mnt/@var_log
btrfs subvolume create /mnt/@var_tmp

btrfs subvolume create /mnt/@/.snapshots
btrfs subvolume create /mnt/@home/.snapshots

umount /mnt
mount -o noatime,compress=zstd,subvol=@ /dev/vda2 /mnt
mkdir -p /mnt/{boot,home/.snapshots,root,.snapshots,var/{cache,log,tmp}}
mount -o noatime,compress=zstd,subvol=@home /dev/vda2 /mnt/home
mount -o noatime,compress=zstd,subvol=@root /dev/vda2 /mnt/root
mount -o noatime,compress=zstd,subvol=@var_cache /dev/vda2 /mnt/var/cache
mount -o noatime,compress=zstd,subvol=@var_log /dev/vda2 /mnt/var/log
mount -o noatime,compress=zstd,subvol=@var_tmp /dev/vda2 /mnt/var/tmp
mount -o noatime,compress=zstd,subvol=@/.snapshots /dev/vda2 /mnt/.snapshots
mount -o noatime,compress=zstd,subvol=@home/.snapshots /dev/vda2 /mnt/home/.snapshots
mount /dev/vda1 /mnt/boot
```

Verify mounts with:
```
lsblk -f
btrfs subvolume list /mnt
```
Generate fstab
```
mkdir -p /mnt/etc
genfstab -U /mnt >> /mnt/etc/fstab
```

4. Install base packages
```
pacstrap /mnt base linux linux-lts linux-firmware sudo vim
```

5. Chroot
```
arch-chroot /mnt
```

6. Set locale
Uncomment `en_US.UTF` entry in `/etc/locale.gen` and run:
```
locale-gen
```

7. Create root password
```
passwd
```

8. Create user
```
useradd -m <user>
passwd <user>
usermod -aG <user>,wheel,audio,video,optical,storage,input <user>
```

9. Set language

```
loadkeys pl
ln -sf /usr/share/zoneinfo/Europe/Warsaw /etc/localtime
echo "LANG=en_US.UTF8" > /etc/locale.conf
echo "KEYMAP=pl" >> /etc/vconsole.conf
```

10. Give wheel group sudo access

Run `visudo` and uncomment line with `wheel`

11. Install GRUB
```
pacman -S grub efibootmgr
mkdir -p /boot/efi
mount /dev/vda1 /boot/efi
grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg
```

12. Install networkmanager
```
pacman -S networkmanager
```

13. Install display manager
```
pacman -S ly
```

14. Install other mandatory software
```
pacman -S base-devel git 
```

15. Install AUR helper
```
su <user>
cd
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

## Instructions to recreate my environment on clean ArcoLinux

1. Download git repository with my configuration files

```
cd
git clone --bare https://github.com/MAR0T/dotfiles.git .dotfiles.git
alias dotfiles='git --git-dir=$HOME/.dotfiles.git --work-tree=$HOME'
dotfiles checkout main
dotfiles config --local status.showUntrackedFiles no
```

2. Enable multilib repository in /etc/pacman.conf (check configuration file in backup folder)
3. Enable ChaoticAUR based on instructions on https://aur.chaotic.cx/docs
4. Install fonts

```
./fonts_install.sh
```

5. Install AUR helper

```
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si
```

6. Install all packages

```
pacman -Sy archlinux-keyring keychain
pacman -Syu
./packages_reinstall.sh
./link_zsh_plugins_themes.sh
```

7. Change default shell

```
chsh -s /bin/zsh
```

8. Enable services, including new display manager
 
```
sudo systemctl enable libvirtd.service
sudo systemctl start libvirtd.service
sudo systemctl disable sddm.service
sudo systemctl enable ly@tty1.service
sudo systemctl disable getty@tty1.service

# You can now reboot and see minimal ly display manager
```

9. Prepare .xprofile file mathing your monitor setup (check one in repo)
