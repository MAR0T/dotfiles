# dotfiles

My Linux configuration files

## Instructions to recreate my environment on clean ArcoLinux

```
cd
git clone --bare https://github.com/MAR0T/dotfiles.git .dotfiles.git
alias dotfiles='git --git-dir=$HOME/.dotfiles.git --work-tree=$HOME'
dotfiles checkout main
dotfiles config --local status.showUntrackedFiles no
./fonts_install.sh
pacman -Sy archlinux-keyring keychain
pacman -Syu
sudo pacman -S --needed - < packages_lists/terminals.txt
sudo pacman -S --needed - < packages_lists/zsh.txt
sudo pacman -S --needed - < packages_lists/obsidian.txt
# ./packages_reinstall.sh
./link_zsh_plugins_themes.sh
chsh -s /bin/zsh
sudo pacman -S --needed - < packages_lists/window-manager.txt
# You can now reboot and switch to i3 window manager
sudo pacman -S --needed - < packages_lists/top.txt
sudo pacman -S --needed - < packages_lists/btrfs.txt
sudo pacman -S --needed - < packages_lists/fonts.txt
sudo pacman -S --needed - < packages_lists/sound.txt
sudo pacman -S --needed - < packages_lists/ascii_gadgets.txt
sudo pacman -S --needed - < packages_lists/browsers.txt
sudo pacman -S --needed - < packages_lists/documentation.txt
sudo pacman -S --needed - < packages_lists/editors.txt
sudo pacman -S --needed - < packages_lists/java.txt
sudo pacman -S --needed - < packages_lists/dotnet.txt
sudo pacman -S --needed - < packages_lists/utils.txt
sudo pacman -S --needed - < packages_lists/downloaders.txt
sudo pacman -S --needed - < packages_lists/applications.txt
sudo pacman -S --needed - < packages_lists/fish.txt
sudo pacman -S --needed - < packages_lists/xfce4.txt
sudo pacman -S --needed - < packages_lists/docker.txt
sudo pacman -S --needed - < packages_lists/virtual-machines.txt
sudo pacman -S --needed - < packages_lists/printer.txt
sudo pacman -S steam
sudo pacman -S ly
sudo systemctl enable libvirtd.service
sudo systemctl start libvirtd.service
sudo systemctl disable sddm.service
sudo systemctl enable ly.service
# You can now reboot and see minimal ly display manager
```
