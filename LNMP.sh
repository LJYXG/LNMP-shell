#!/usr/bin/env bash

set -e

function usage
{
    echo "usage: LNMP.sh [-n ][-m][-p ] [-a ] "
    echo ""
    echo "optional arguments:"
    echo "  -n,  --nginx                Install Nginx"
    echo "  -m,  --mysql         Install Mysql-Server"
    echo "  -p,  --php                Install PHP ?"
    echo "  -h,  --help			Show This"
}

function checkinstall
{
    if ! type $1 >/dev/null 2>&1 
    then
    return 0
    else
    return 1
    fi
}


function nginx_install
{
    if [[ $(checkinstall nginx) == 0 ]]
    then
        echo "start insatlled"
        sudo apt get install -y nginx
        systemctl enable nginxd
    else
    echo "You are already installed nginx!!!"
    fi
    return 1
}


function mysql_install
{
    if [[ $(checkinstall mysql) == 0 ]]
    then
        echo "start insatlled"
        sudo apt get install -y nginx
        
    else
    echo "You are already installed nginx!!!"
    fi
    return 1
}


while [ "$1" != "" ];do
    case $1 in
        -n | --nginx )  shift
                nginx_install
                ;;
        -m | --mysql )  shift
                mysql_install
                ;;
        -h | --help )	usage
                exit
                ;;
        * )		usage
                exit
                ;;

    esac


done