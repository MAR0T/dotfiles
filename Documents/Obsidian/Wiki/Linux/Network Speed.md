
## Check network interface name
```sh
ip link | grep -E 'state UP'
```

## Check network interface speed
```sh
ethtool <interface_name> | grep Speed
```