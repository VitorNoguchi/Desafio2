#!/bin/bash
nome=("$@")
pasta=${nome[0]}
if [ -d "./$pasta" ]; then
	dir=$(pwd)
	data=$(date +"%Y-%m-%d")
	cd $dir/$pasta

	for d in *
	do
		if [ -d "$d" ];
		then
			tar -czvf $d\_$data.tar.gz $d --exclude=*target
		fi
	done

	if [ -d "$dir/$pasta\_backup" ]; then
		sudo mv $dir/$pasta/*\_$data.tar.gz /$pasta\_backup
	else
		sudo mkdir /$pasta\_backup
		sudo mv $dir/$pasta/*\_$data.tar.gz /$pasta\_backup
	fi 
else
	echo "Diretório não existe"
fi
