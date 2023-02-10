# Btrfs
Btrfs is a modern copy on write (CoW) filesystem for Linux aimed at implementing advanced features while also focusing on fault tolerance, repair and easy administration. 

I setup **btrfs** partition for my arch linux installation.
It consists of multiple subvolumes which can grow and be snapshoted independently.

## Creating subvolumes
1. Check UUID of btrfs partition in `/etc/fstab`
2. `sudo mount UUID=<uuid> /mnt`
3. `sudo btrfs subvolume create /mnt/@<name>`
4. Update `etc/fstab` with `subvol=/@<name>` in place you want to mount freshly created subvolume

## Automatic snapshots
### Create configuration
```sh
sudo snapper -c config_name create-config /path/to/subvolume
```


### Root folder
* before and after program installation or upgrade

### Home folder
* On each login to [[i3wm]]

```
exec --no-startup-id snapper -c home create -d "Home: after login" # makes btrfs snapshot
exec --no-startup-id snapper -c root create -d "after successful login" # makes btrfs snapshot
```

## Useful GUI apps
* sudo btrfs-assistant

Allows to restore files from snapshots, list all kept snapshots and configure snapshots retention.

## Snapshots
Set 
```
ALLOW_USERS="<USER>"
ALLOW_GROUPS="<GROUP>"
SYNC_ACL="yes"

# limits for timeline cleanup
TIMELINE_MIN_AGE="1800"
TIMELINE_LIMIT_HOURLY="10"
TIMELINE_LIMIT_DAILY="10"
TIMELINE_LIMIT_WEEKLY="0"
TIMELINE_LIMIT_MONTHLY="10"
TIMELINE_LIMIT_YEARLY="10"
```
in `/etc/snapper/configs/root`

```
sudo snapper -c home create-config /home
```
Apply the same changes in `/etc/snapper/configs/home`
