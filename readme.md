# Transciever firmware

## To build

Set up vivado on your command line
Linux: 
```
source /tools/Xilinx/Vivado/2022.2/settings64.sh
```
Windows
```
c:\install_location\vivado\2022.2\settings.bat
```
or whatever it is

To unpack:
```
vivado -source transceiver.tcl
```

to pack:
File>>Project>>Write Tcl

tick Copy sources to new project
Name it transceiver.tcl

then make commits and push.
