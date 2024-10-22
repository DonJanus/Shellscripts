#!/bin/bash


function verifica_arquivo(){
local caminho="$1"
local arquivos=("$caminho"/*)
local arquivo
local i=0

while [ $i -lt ${#arquivos[@]} ]; do
	arquivo="${arquivos[$i]}"
	if [ -f "$arquivo" ]; then
		echo "$arquivo"
	elif [ -d "$arquivo" ]; then
		verifica_arquivo "$arquivo"
	fi
	((i++))
done
}


verifica_arquivo "$1"
