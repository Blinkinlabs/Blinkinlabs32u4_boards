#!/bin/bash
make clean
make VID=0x1D50 PID=0x606C F_CPU=16000000
mv Caterina.hex Caterina-BlinkyTape.hex
