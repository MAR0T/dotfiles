If monitor supports ddc, it can be controlled using ddcutil. 

```sh
sudo modprobe i2c-dev
# Display 2 = left screen
# 60 = input
# 0x0f = DP
# 0x11 = HDMI

sudo ddcutil -d 1 setvcp 60 0x11
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