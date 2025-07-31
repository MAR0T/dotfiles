When dual-booting there is a problem with timezones and time in Windows is incorrect after using Linux. To correctly interpret time in BIOS by Windows and not require resync after each boot, we can set in registry:

```
[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\TimeZoneInformation]
"RealTimeIsUniversal"=qword:00000001
```

