Polkit manages permissions.

**udiskie** requires permission for some **polkit** actions which are usually granted when using a desktop environment. If your login session is not properly activated you may need to customize your polkit settings.

When **Thunar** file manager asks for sudo password when accessing drive, it means we do not have specific permission.

By adding file **/etc/polkit-1/rules.d/50-udiskie.rules** with content:
```
polkit.addRule(function(action, subject) {
  var YES = polkit.Result.YES;
  var permission = {
    // required for udisks1:
    "org.freedesktop.udisks.filesystem-mount": YES,
    "org.freedesktop.udisks.luks-unlock": YES,
    "org.freedesktop.udisks.drive-eject": YES,
    "org.freedesktop.udisks.drive-detach": YES,
    // required for udisks2:
    "org.freedesktop.udisks2.filesystem-mount": YES,
    "org.freedesktop.udisks2.filesystem-mount-system": YES,
    "org.freedesktop.udisks2.encrypted-unlock": YES,
    "org.freedesktop.udisks2.eject-media": YES,
    "org.freedesktop.udisks2.power-off-drive": YES,
    // required for udisks2 if using udiskie from another seat (e.g. systemd):
    "org.freedesktop.udisks2.filesystem-mount-other-seat": YES,
    "org.freedesktop.udisks2.filesystem-unmount-others": YES,
    "org.freedesktop.udisks2.encrypted-unlock-other-seat": YES,
    "org.freedesktop.udisks2.eject-media-other-seat": YES,
    "org.freedesktop.udisks2.power-off-drive-other-seat": YES
  };
  if (subject.isInGroup("storage")) {
    return permission[action.id];
  }
});
```

where **org.freedesktop.udisks2.filesystem-mount-system** is a privilege required to mount Windows system drive, we give this privilege to **storage** group. Our default user is already in that group. After setting this privilege, we are no longer asked password when mounting external drives.