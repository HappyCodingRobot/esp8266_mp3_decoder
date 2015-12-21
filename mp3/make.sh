#!/bin/bash -e
ESPTOOL=esptool.py
ESPPORT=/dev/ttyUSB0
ESPBAUD=115200
## 512k settings
#make COMPILE=gcc BOOT=none APP=0 SPI_SPEED=40 SPI_MODE=QIO SPI_SIZE=512
#${ESPTOOL} --port ${ESPPORT} --baud ${ESPBAUD} write_flash 0x00000 ../bin/eagle.flash.bin 0xA0000 ../bin/eagle.irom0text.bin

## 1M & 4M settings
# make COMPILE=gcc BOOT=none APP=0 SPI_SPEED=40 SPI_MODE=QIO SPI_SIZE=1024
make COMPILE=gcc BOOT=none APP=0 SPI_SPEED=40 SPI_MODE=QIO SPI_SIZE=4096
${ESPTOOL} --port ${ESPPORT} --baud ${ESPBAUD} write_flash 0x00000 ../bin/eagle.flash.bin 0xA0000 ../bin/eagle.irom0text.bin
