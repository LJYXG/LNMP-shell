#!/usr/bin/env bash

function usage
{
    echo "usage: LNMP.sh [-n ][-m][-p ] [-a ] "
    echo ""
    echo "optional arguments:"
    echo "  -n,  --nginx                Install Nginx"
    echo "  -m,  --mysql-server         Install Mysql-Server"
    echo "  -p,  --php ?                Install PHP ?"
    echo "  -a,  --all			Install All of N,M,P"
    echo "  -h,  --help			Show This"
}

case $1 in
	-n | --nginx )	echo "23333"
			;;
	-h | --help )	usage
			exit
			;;
	* )		usage
			exit
			;;

esac



		 
