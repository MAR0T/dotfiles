# dotfiles

My Linux configuration files

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
