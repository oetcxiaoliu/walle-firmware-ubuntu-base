#!/bin/bash

clean_first_boot () {
    rm -f /firstboot 2>/dev/null
    sync
}

if [ -e /firstboot ]; then
    echo "======Expanding the rootfs..."
    resize2fs /dev/block/mtd/by-name/system
    clean_first_boot
fi
