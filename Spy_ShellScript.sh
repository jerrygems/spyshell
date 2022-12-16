#!/bin/bash
#


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

HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000
#main program

spy(){
    source asciivars.sh
    while :; do clear;echo -e "${first}" ; sleep 0.1;clear; echo -e "${second}" ; sleep 0.1;clear; echo -e "${third}" ; sleep 0.1;clear; echo -e "${fourth}" ; sleep 0.1; break; done;

}

echo -e "${yellow}welcome to ${nc}${red}Sp1d3y's${nc}${yellow} naughty shell${nc}"

while :
do
	
	#easy life things
	
		
	name=$(whoami)
	prompt=$'\033[1;33m;-)\033[0m\033[1;31m'${name}$'\033[0m\033[1;34m@'$(hostname)$'\033[0m\033[1;32m>>\033[0m\033[1;31m🕸️ \033[0m';
	echo -n -e "${blue}"
	read -r -e -p "${prompt} " cmd
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
	elif [[ ${cmd} == "spidey" || ${cmd} == "spy" || ${cmd} == "sp1d3y" ]]
	then
		source asciivars.sh
		echo -n -e "${boldRED}"
		echo -e "${sixth}"
		echo -n -e "${nc}"
	elif [[ ${cmd} == "time" ]]
	then
	    echo -n -e "${purple}"
	    date | awk '{print $5,$6,$7}' | figlet
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
	elif [[ ${cmd} == "edit" ]]
	then
	    #print colored output2>/dev/null && ${cmd} 2>spyshell.log 
        echo -n -e "${purple}"
        tmux
        echo -n -e "${nc}"            
	elif [[ ${cmd} ]]
	then
	    #print colored output2>/dev/null && ${cmd} 2>spyshell.log 
        echo -n -e "${purple}"
        eval "${cmd}" 
        echo -n -e "${nc}"            
	fi
	
	
done
