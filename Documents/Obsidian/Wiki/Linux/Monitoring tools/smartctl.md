Allows to check SMART data of drives.

```sh
smartctl -a /dev/sdc
```

Running self-test of drive.

```sh
smartctl -t short /dev/sdc
```

After test finishes, check results again with `smartctl -a /dev/sdc`