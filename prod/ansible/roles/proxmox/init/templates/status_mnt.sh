#!/bin/bash

mount="/mnt/pve/u269452"
ls $mount
if [ $? -ne 0 ]; then
        echo "$mount looks bad"
	umount $mount
else
        echo "$mount looks good"
fi