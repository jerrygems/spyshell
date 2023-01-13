#!/bin/bash -i
#
dontRemoveThisVar="SpyShell"

#color variables
red='\033[0;31m'
boldRED='\033[1;31m'
yellow='\033[1;33m'
green='\033[0;32m'
blue='\033[0;34m'
purple='\033[0;35m'
lightGRN='\033[1;32m'
lightBLUE='\033[1;34m'
nc='\033[0m'



#rc
shopt -s checkwinsize
set -o vi
set -o emacs
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000
#main program

#confirm_exit function
trap 'confirm_exit' 2
confirm_exit(){
    read -r -p "Are you sure you want to exit? (y/n) " confirm
    if [ "$confirm" = "y" ]; then
        echo "Exiting the script"
        exit
    fi
}
spy(){
    FILE=$(find / -name asciivars.sh -exec grep -q "SpyShell" {} \; -print -quit)
    source ${FILE}
    while :; do clear;echo -e "${first}" ; sleep 0.1;clear; echo -e "${second}" ; sleep 0.1;clear; echo -e "${third}" ; sleep 0.1;clear; echo -e "${fourth}" ; sleep 0.1; break; done;

}

echo -e "${yellow}welcome to ${nc}${red}Sp1d3y's${nc}${yellow} naughty shell${nc}"

while :
do

        #easy life things

        name=$(whoami)
        prompt=$'\033[1;33m;-)\033[0m\033[1;31m'${name}$'\033[0m\033[1;34m@'$(hostname)$'\033[0m\033[1;32m>>\033[0m\033[1;31m🕸️ \033[0m';
        echo -n -e "${blue}"
        read -i -e -p "${prompt} " cmd
        history -s ${cmd}
        echo -n -e "${nc}"

        #figlet art
        if [[ ${cmd} == "hello" ]]
        then

            echo -e "${yellow}welcome to ${nc}${red}Sp1d3y's${nc}${yellow} naughty shell${nc}"
            echo -n -e "${boldRED}"
            spy
            spy
            spy
            figlet -f small.flf "${cmd} $(whoami)"
            echo -n -e "${nc}"
        elif [[ ${cmd} == "initfun" || ${cmd} == "InitFun" || ${cmd} == "ini" || ${cmd} == "INITFUN" ]]
        then
                echo -n -e "${purple}"
                        eval ./initfun.sh
                echo -n -e "${nc}"
        elif [[ ${cmd} == "spidey" || ${cmd} == "spy" || ${cmd} == "sp1d3y" ]]
        then
                FILE=$(find / -name asciivars.sh -exec grep -q "SpyShell" {} \; -print -quit)
                source ${FILE}
                echo -n -e "${boldRED}"
                echo -e "${sixth}"
                echo -n -e "${nc}"
        elif [[ ${cmd} == "time" ]]
        then
            echo -n -e "${purple}"
            date | awk '{print $4,$5,$6}' | figlet
            echo -n -e "${nc}"
        elif [[ ${cmd} == "date" ]]
        then
            echo -n -e "${purple}"
            date | awk '{print $3,$2,$7}' | figlet
            echo -n -e "${nc}"
        elif [[ ${cmd} == "whoami" ]]
        then
            echo -n -e "${purple}"
            ${cmd} | figlet
            echo -n -e "${nc}"
        elif [[ ${cmd} == "hostname" ]]
        then
            echo -n -e "${purple}"
            ${cmd} | figlet
            echo -n -e "${nc}"
        elif [[ ${cmd} == "exit" || ${cmd} == "bye" ]]
        then
            echo -n -e "${boldRED}"
            figlet -f small.flf "good bye $(whoami)"
            exit
            echo -n -e "${nc}"
        elif [[ ${cmd} == "grabip" ]]
        then
            #print colored output2>/dev/null && ${cmd} 2>spyshell.log
        echo -n -e "${boldRED}"
        ifconfig | grep -E "inet [0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}" | awk '{print $1,$2}' | figlet -f small.flf
        echo -n -e "${nc}"
        elif [[ ${cmd} == "spylistner" ]]
        then
                echo "spylistner will be here" | figlet
        elif [[ ${cmd} == "COT" ]]
        then
                echo "chat over terminal" | figlet
        elif [[ ${cmd} == "bash-compline" ]]
        then
                echo "bash completion without tab" | figlet
        elif [[ ${cmd} == "koth setup" ]]
        then
                echo "starting koth setup" | figlet
#koth automation
        elif [[ ${cmd} == "hello-friend" ]]
        then
                read -e -r -p "enter path of ovpn file : " path
                nohup sudo openvpn ${path} 2>/dev/null &
        elif [[ ${cmd} ]]
        then
            #print colored output2>/dev/null && ${cmd} 2>spyshell.log
        echo -n -e "${purple}"
        eval "${cmd}"
        echo -n -e "${nc}"
        fi


done
