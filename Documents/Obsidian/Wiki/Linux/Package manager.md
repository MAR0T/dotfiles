1. [[pacman]]
2. [[pamac]]
3. [[yay]]


---

## Potential problems

### Warning: local is newer than community

[Solution](https://ostechnix.com/how-to-fix-warning-local-is-newer-than-community-error-in-arch-linux/)

The below command will update all packages, then downgrade all affected packages.

```bash
sudo pacman -Suu
```

Then, do the full upgrade using command:

```bash
sudo pacman -Syyu
```



