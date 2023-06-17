

Check PCI Deveice IDs:
```sh
lspci -nnk
```
Potential output:
```
00:00.0 Host bridge [0600]: Intel Corporation Device [8086:a703] (rev 01)
	DeviceName: Onboard - Other
	Subsystem: Micro-Star International Co., Ltd. [MSI] Device [1462:7d31]
00:01.0 PCI bridge [0604]: Intel Corporation Device [8086:a70d] (rev 01)
	Subsystem: Micro-Star International Co., Ltd. [MSI] Device [1462:7d31]
	Kernel driver in use: pcieport
00:02.0 Display controller [0380]: Intel Corporation Raptor Lake-S GT1 [UHD Graphics 770] [8086:a780] (rev 04)
	DeviceName: Onboard - Video
	Subsystem: Micro-Star International Co., Ltd. [MSI] Raptor Lake-S GT1 [UHD Graphics 770] [1462:7d31]
	Kernel driver in use: i915
	Kernel modules: i915
00:06.0 PCI bridge [0604]: Intel Corporation Device [8086:a74d] (rev 01)
	Kernel driver in use: pcieport
00:08.0 System peripheral [0880]: Intel Corporation GNA Scoring Accelerator module [8086:a74f] (rev 01)
	DeviceName: Onboard - Other
	Subsystem: Micro-Star International Co., Ltd. [MSI] Device [1462:7d31]
00:0a.0 Signal processing controller [1180]: Intel Corporation Device [8086:a77d] (rev 01)
	DeviceName: Onboard - Other
	Kernel driver in use: intel_vsec
	Kernel modules: intel_vsec
00:14.0 USB controller [0c03]: Intel Corporation Alder Lake-S PCH USB 3.2 Gen 2x2 XHCI Controller [8086:7ae0] (rev 11)
	DeviceName: Onboard - Other
	Subsystem: Micro-Star International Co., Ltd. [MSI] Alder Lake-S PCH USB 3.2 Gen 2x2 XHCI Controller [1462:7d31]
	Kernel driver in use: xhci_hcd
	Kernel modules: xhci_pci
00:14.2 RAM memory [0500]: Intel Corporation Alder Lake-S PCH Shared SRAM [8086:7aa7] (rev 11)
	DeviceName: Onboard - Other
00:14.3 Network controller [0280]: Intel Corporation Alder Lake-S PCH CNVi WiFi [8086:7af0] (rev 11)
	DeviceName: Onboard - Ethernet
	Subsystem: Intel Corporation Alder Lake-S PCH CNVi WiFi [8086:0074]
	Kernel driver in use: iwlwifi
	Kernel modules: iwlwifi, wl
00:16.0 Communication controller [0780]: Intel Corporation Alder Lake-S PCH HECI Controller #1 [8086:7ae8] (rev 11)
	DeviceName: Onboard - Other
	Subsystem: Micro-Star International Co., Ltd. [MSI] Alder Lake-S PCH HECI Controller [1462:7d31]
	Kernel driver in use: mei_me
	Kernel modules: mei_me
00:17.0 SATA controller [0106]: Intel Corporation Alder Lake-S PCH SATA Controller [AHCI Mode] [8086:7ae2] (rev 11)
	DeviceName: Onboard - SATA
	Subsystem: Micro-Star International Co., Ltd. [MSI] Alder Lake-S PCH SATA Controller [AHCI Mode] [1462:7d31]
	Kernel driver in use: ahci
00:1a.0 PCI bridge [0604]: Intel Corporation Alder Lake-S PCH PCI Express Root Port #25 [8086:7ac8] (rev 11)
	Subsystem: nCipher Security Alder Lake-S PCH PCI Express Root Port [0100:001a]
	Kernel driver in use: pcieport
00:1b.0 PCI bridge [0604]: Intel Corporation Device [8086:7ac0] (rev 11)
00:1b.4 PCI bridge [0604]: Intel Corporation Device [8086:7ac4] (rev 11)
	Subsystem: Micro-Star International Co., Ltd. [MSI] Device [1462:7d31]
	Kernel driver in use: pcieport
00:1c.0 PCI bridge [0604]: Intel Corporation Alder Lake-S PCH PCI Express Root Port #1 [8086:7ab8] (rev 11)
	Subsystem: Micro-Star International Co., Ltd. [MSI] Alder Lake-S PCH PCI Express Root Port [1462:7d31]
	Kernel driver in use: pcieport
00:1c.3 PCI bridge [0604]: Intel Corporation Device [8086:7abb] (rev 11)
	Subsystem: Micro-Star International Co., Ltd. [MSI] Device [1462:7d31]
	Kernel driver in use: pcieport
00:1c.4 PCI bridge [0604]: Intel Corporation Alder Lake-S PCH PCI Express Root Port #5 [8086:7abc] (rev 11)
	Subsystem: Micro-Star International Co., Ltd. [MSI] Alder Lake-S PCH PCI Express Root Port [1462:7d31]
	Kernel driver in use: pcieport
00:1f.0 ISA bridge [0601]: Intel Corporation Z690 Chipset LPC/eSPI Controller [8086:7a84] (rev 11)
	DeviceName: Onboard - Other
	Subsystem: Micro-Star International Co., Ltd. [MSI] Z690 Chipset LPC/eSPI Controller [1462:7d31]
00:1f.3 Audio device [0403]: Intel Corporation Alder Lake-S HD Audio Controller [8086:7ad0] (rev 11)
	DeviceName: Onboard - Sound
	Subsystem: Micro-Star International Co., Ltd. [MSI] Alder Lake-S HD Audio Controller [1462:7d31]
	Kernel driver in use: snd_hda_intel
	Kernel modules: snd_hda_intel, snd_sof_pci_intel_tgl
00:1f.4 SMBus [0c05]: Intel Corporation Alder Lake-S PCH SMBus Controller [8086:7aa3] (rev 11)
	DeviceName: Onboard - Other
	Subsystem: Micro-Star International Co., Ltd. [MSI] Alder Lake-S PCH SMBus Controller [1462:7d31]
	Kernel driver in use: i801_smbus
	Kernel modules: i2c_i801
00:1f.5 Serial bus controller [0c80]: Intel Corporation Alder Lake-S PCH SPI Controller [8086:7aa4] (rev 11)
	DeviceName: Onboard - Other
	Subsystem: Micro-Star International Co., Ltd. [MSI] Alder Lake-S PCH SPI Controller [1462:7d31]
	Kernel driver in use: intel-spi
	Kernel modules: spi_intel_pci
01:00.0 VGA compatible controller [0300]: NVIDIA Corporation GA104 [GeForce RTX 3070 Lite Hash Rate] [10de:2488] (rev a1)
	Subsystem: Micro-Star International Co., Ltd. [MSI] GA104 [GeForce RTX 3070 Lite Hash Rate] [1462:3904]
	Kernel driver in use: vfio-pci
	Kernel modules: nouveau
01:00.1 Audio device [0403]: NVIDIA Corporation GA104 High Definition Audio Controlllspci -nnker [10de:228b] (rev a1)
	Subsystem: Micro-Star International Co., Ltd. [MSI] GA104 High Definition Audio Controller [1462:3904]
	Kernel driver in use: vfio-pci
	Kernel modules: snd_hda_intel
02:00.0 Non-Volatile memory controller [0108]: Kingston Technology Company, Inc. Device [2646:5013] (rev 01)
	Subsystem: Kingston Technology Company, Inc. Device [2646:5013]
	Kernel driver in use: nvme
	Kernel modules: nvme
03:00.0 Non-Volatile memory controller [0108]: Kingston Technology Company, Inc. Device [2646:5013] (rev 01)
	Subsystem: Kingston Technology Company, Inc. Device [2646:5013]
	Kernel driver in use: nvme
	Kernel modules: nvme
05:00.0 Non-Volatile memory controller [0108]: Kingston Technology Company, Inc. Device [2646:5013] (rev 01)
	Subsystem: Kingston Technology Company, Inc. Device [2646:5013]
	Kernel driver in use: nvme
	Kernel modules: nvme
06:00.0 Ethernet controller [0200]: Intel Corporation Ethernet Controller I225-V [8086:15f3] (rev 03)
	Subsystem: Micro-Star International Co., Ltd. [MSI] Ethernet Controller I225-V [1462:7d31]
	Kernel driver in use: igc
	Kernel modules: igc
07:00.0 SATA controller [0106]: ASMedia Technology Inc. ASM1062 Serial ATA Controller [1b21:0612] (rev 02)
	Subsystem: ASMedia Technology Inc. ASM1062 Serial ATA Controller [1b21:1060]
	Kernel driver in use: ahci
08:00.0 PCI bridge [0604]: Advanced Micro Devices, Inc. [AMD/ATI] Navi 10 XL Upstream Port of PCI Express Switch [1002:1478] (rev df)
	Kernel driver in use: pcieport
09:00.0 PCI bridge [0604]: Advanced Micro Devices, Inc. [AMD/ATI] Navi 10 XL Downstream Port of PCI Express Switch [1002:1479]
	Subsystem: Advanced Micro Devices, Inc. [AMD/ATI] Navi 10 XL Downstream Port of PCI Express Switch [1002:1479]
	Kernel driver in use: pcieport
0a:00.0 VGA compatible controller [0300]: Advanced Micro Devices, Inc. [AMD/ATI] Navi 22 [Radeon RX 6700/6700 XT/6750 XT / 6800M/6850M XT] [1002:73df] (rev df)
	Subsystem: XFX Limited Navi 22 [Radeon RX 6700/6700 XT/6750 XT / 6800M/6850M XT] [1eae:661a]
	Kernel driver in use: amdgpu
	Kernel modules: amdgpu
0a:00.1 Audio device [0403]: Advanced Micro Devices, Inc. [AMD/ATI] Navi 21/23 HDMI/DP Audio Controller [1002:ab28]
	Subsystem: Advanced Micro Devices, Inc. [AMD/ATI] Navi 21/23 HDMI/DP Audio Controller [1002:ab28]
	Kernel driver in use: snd_hda_intel
	Kernel modules: snd_hda_intel

```

Device IDs are mentioned in `[]` .
Find a GPU you would like to pass to your virtual machine.
To allow GPU passthrough, we need to stop using selected graphics card by our host system. Put your GPU and its audio device ids separated by a comma in `/etc/modprobe.d/vfio.conf` like:
```sh
options vfio-pci ids=10de:2488,10de:228b
options vfio-pci disable_vga=1
softdep nouveau pre: vfio-pci
```
You can also add
```
softdep nvidia pre: vfio-pci
softdep nvidia* pre: vfio-pci
```
to clock nvidia driver if you have installed one.

```
To be safer, tell your OS which graphic card should it use instead.
I needed to put file */etc/X11/xorg.conf.d/10-amd.conf*
```sh
Section "Device"
	Identifier "AMD Radeon"
	Driver "amdgpu"
	BusID "PCI:10:0:0"
EndSection
```

where *10:0:0* is taken from output of 
```sh
lspci -nnk
```
with numbers in first column converted from hex to decimal.

and driver is:

* "nouveau" for nvidia open-source driver
* "nvidia" for nvidia closed driver
* "amdgpu" for amd driver

Load vfio kernel modules by adding them to `/etc/mkinitcpio.conf` in MODULES array:
```sh
MODULES=(... vfio_pci vfio vfio_iommu_type1)
```

Then you should run
```sh
mkinitcpio -p linux
```
**reboot** and keep your fingers crossed.

If it boots, in output of command `lspci -nnk` kernel driver in use should be `vfio-pci`.

 If it works, rebuild all your kernels using
```sh
mkinitcpio -P
```





# Driverctl
Tool which allows changing GPU driver in runtime. 

[driverctl project repository](https://gitlab.com/driverctl/driverctl)
[Forum thread](https://forum.level1techs.com/t/problem-cant-use-driverctl-overrides-on-nvidia-driver/176777/3)