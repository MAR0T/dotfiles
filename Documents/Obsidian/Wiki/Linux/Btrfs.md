# Btrfs
Btrfs is a modern copy on write (CoW) filesystem for Linux aimed at implementing advanced features while also focusing on fault tolerance, repair and easy administration. 

I setup ***btrfs** partition for my arch linux installation.
It consists of multiple subvolumes which can grow and be snapshoted independently.


## Automatic snapshots
### Root folder
* before and after program installation or upgrade

### Home folder
* On each login to [[i3wm]]

`exec --no-startup-id snapper -c marek_home create -d "after login" # makes btrfs snapshot`

## Useful GUI apps
* sudo btrfs-assistant

Allows to restore files from snapshots, list all kept snapshots and configure snapshots retention.