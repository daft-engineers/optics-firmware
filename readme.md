# Transciever firmware

## To build

Check you have the a7-35t board installed
Tools >> Vivado store
Boards >> Digilent Inc >> Single Part >> CmodA7-35t 
If it's not ticked, click the arrow pointing to a line in the upper bar.

Clone the repo

Open Vivado 
Navigate to the project folder

To unpack:
```
source transceiver.tcl
```

to pack:
File>>Project>>Write Tcl

tick Copy sources to new project
Name it transceiver.tcl

then make commits and push.

Please put VHDL, constraints and any other essential files in to the src folder.
