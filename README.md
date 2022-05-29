# dotfiles

My Linux configuration files

## Instructions to recreate my environment on clean ArcoLinux

```
git clone --bare https://github.com/MAR0T/dotfiles.git .dotfiles.git
alias dotfiles='git --git-dir=$HOME/.dotfiles.git --work-tree=$HOME'
dotfiles checkout main
pacman -Sy archlinux-keyring
pacman -Syu
./packages_reinstall.sh
./fonts_install.sh
```
