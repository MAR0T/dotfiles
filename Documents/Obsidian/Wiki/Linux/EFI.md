When bootloader is broken, you need to:

1. Boot from Live CD
2. Mount root and EFI partition of selected disk
3. chroot into system
4. Reinstall grub on EFI partition

```
sudo grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=<name>
```

this will create new entry in EFI and a directory in `/boot/efi/EFI/<name>`

EFI entries can be listed by `efibootmgr` tool.
You can see registered entries and change boot order. 

You can remove additional EFI entries providing its hex number (0-9A-F):

```
sudo efibootmgr -b <hex number> -B
```
