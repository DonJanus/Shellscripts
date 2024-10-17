#!/bin/bash


usodisco=$(df -h | grep -i /mnt/c | awk '{print $5}')

if [ $? -eq 0 ]; then
	echo "Uso de disco em $usodisco na data de $(date +%Y%m%d)" >> log.1
else
	echo "erro"
fi

