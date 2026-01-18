If monitor supports ddc, it can be controlled using ddcutil. 

```sh
sudo modprobe i2c-dev
# Display 3 = left screen
# 60 = input
# 0x0f = DP
# 0x11 = HDMI

sudo ddcutil -d 3 setvcp 60 0x11
```

To list supported monitors run:

```sh
sudo ddcutil detect
```

### Switch monitor on startup

With 2 GPUs in my PC I had an issue where one of monitors stays on Linux boot message after startup. With **ddcutil** I can switch video source programatically.

#### Systemd service

Create a file in */root/monitor_switch_HDMI.sh*
```sh
modprobe i2c-dev
# Display 2 = left screen
# 60 = input
# 0x0f = DP
# 0x11 = HDMI

ddcutil -d 2 setvcp 60 0x11
```

Create a file */etc/systemd/system/monitor_switch_HDMI.service*
```sh
[Unit]
Description=Switch left monitor video source

[Service]
Type=oneshot
ExecStart=/root/monitor_switch_HDMI.sh

[Install]
WantedBy=multi-user.target
```

Create a file */etc/systemd/system/monitor_switch_HDMI.timer*
```sh
[Unit]
Description=Execute switching monitor video source with small delay after boot

[Timer]
OnBootSec=15

[Install]
WantedBy=multi-user.target
```
Timeout of 15s gives tiime for monitors to be detected. When running just the service and not the timer script was giving an error that there is no such display available.

To verify syntax run:
```sh
systemd-analyze verify /etc/systemd/system/monitor_switch_HDMI.timer
```

To enable **timer** run:
```sh
sudo systemctl enable monitor_switch_HDMI.timer
```

To check status of the timer and service:
```sh
sudo systemctl status monitor_switch_HDMI.timer
sudo systemctl status monitor_switch_HDMI.service
```
It will show logs and time when it was or will be executed.

### Switch monitor on i3blocks widget click

1. Modify script for switching monitors not to use `sudo` inside, but require running whole script with `sudo <script>`
```sh
modprobe i2c-dev
# Display 2 = left screen
# 60 = input
# 0x0f = DP
# 0x11 = HDMI

ddcutil -d 3 setvcp 60 0x11
ddcutil -d 2 setvcp 60 0x11
ddcutil -d 1 setvcp 60 0x1
```

2. Run `sudo visudo` to add line to sudoers file which will allow your user to run this specific script with sudo without being asked for password
  ```
  <user> ALL=(ALL:ALL) NOPASSWD: /<absolute path to script>
  ``` 
    
3. Find nice icon in [Nerdfonts CheatSheet](https://www.nerdfonts.com/cheat-sheet)
4. Modify *.config/i3blocks/config*
```
[monitor_switch]
full_text=<monitor_icon>  switch 
command=sudo /<absolute path to script>
```

### Single monitor mode in Windows

`Win+P - Only PC Monitor` - turns off all monitors except main one
`Win+P - Extend Displays` - turns back on all secondary monitors