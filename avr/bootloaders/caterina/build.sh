#!/bin/bash
make clean
make VID=0x1D50 PID=0x605E F_CPU=16000000
mv Caterina.hex Caterina-AnalogLEDFader.hex

make clean
make VID=0x1D50 PID=0x6666 F_CPU=16000000
mv Caterina.hex Caterina-USBDMX.hex

make clean
make VID=0x1D50 PID=0x606C F_CPU=16000000
mv Caterina.hex Caterina-BlinkyTape.hex
