### Tools
Tools to prepare a good mirrorlist:
1. https://wiki.archlinux.org/title/Reflector
2. https://github.com/westandskif/rate-mirrors

Example:
```bash
reflector --verbose --age 10 --fastest 21 --threads 21 --sort rate --protocol https --save /etc/pacman.d/mirrorlist
```

Replace `/etc/pacman.d/mirrorlist` file with prepared list of mirrors.
Replace `/etc/pacman.d/chaotic-mirrorlist` with a list of Arch Linux Chaotic-AUR mirrors.
Then run:
```bash
pacman -Syyu
```
to use new mirrors and test they are working flawlessly.
