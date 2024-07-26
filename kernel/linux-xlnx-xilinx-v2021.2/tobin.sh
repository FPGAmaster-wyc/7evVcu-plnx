#!/bin/sh
CROSS_COMPILE=arm-linux-gnueabihf-
#进行elf到bin转换的拷贝时，排除note段，以及重定位信息
${CROSS_COMPILE}objcopy -O binary -R .note -R .comment -S vmlinux linux.bin
#对拷贝后从elf转换成bin的二进制文件使用gzip进行压缩
gzip -9 linux.bin    

mv -f linux.bin.gz linux.bin
