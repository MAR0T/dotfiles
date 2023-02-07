### Make boot log persistent

`/etc/systemd/journald.conf`
```
Storage=auto
```
Remove `/etc/systemd/journald.conf.d/*` to be recreated based on modifed defaults.

Make sure directory `/var/log/journal` exists.