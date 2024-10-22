#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Uso: $0 arquivo"
	exit 1
fi
arquivo=$1
if [ ! -f "$arquivo" ]; then
	echo "O arquivo $arquivo não existe"
	exit 1
fi


if grep -q -E "if" $arquivo; then
	echo "Possui o padrão"
else
	echo  "Não possui o padrão"
fi
