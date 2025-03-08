When you use bluetooth headphones and make a call, sound becomes mono and low quality when internal microphone is used.
If I use external microphone (via USB) and use that, there is no sound in headphones.
I need to disable Handsfree Telephony service in bluetooth device properties.
That way, sound quality is excellent, both for input and output.
In Windows 10, I had to select Headphones instead of Headset as remote device and it was working OK.
However, in Windows 11 there are only Headphones and Handsfree service is turned on after each computer restart.

### How to automate

1. Install [Bluetooth Command Line Tools](https://bluetoothinstaller.com/bluetooth-command-line-tools)
2. Create a BAT script

```
btcom -n "WH-1000XM4" -r -s111e
```

-n - device name
-r - disable option
-c - enable option
s - service
111E - Handsfree Telephony - see [Assigned Number](https://www.bluetooth.com/wp-content/uploads/Files/Specification/HTML/Assigned_Numbers/out/en/Assigned_Numbers.pdf?v=1738167021793) from Bluetooth Specification

3. Create a task in Task Scheduler which will run this **bat** script after login of specific user. Different scripts can be run depending on available WiFi network which can differentiate home environment from external one where microphone is not available.
4. [SilentCMD](https://github.com/stbrenner/SilentCMD) can be used not to open terminal with command executes, which takes a few seconds. Command is:

```
SilentCMD C:\path\to\script.bat
```
