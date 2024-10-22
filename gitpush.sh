#!/bin/bash


arquivo=$1

if [ ! -f $arquivo ]; then
	echo "Necessito de um arquivo para fazer o push"
	exit 1
fi

sudo git add $arquivo
sudo git commit $arquivo
sudo git push


