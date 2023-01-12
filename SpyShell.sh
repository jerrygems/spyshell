#!/bin/bash

#color variables
red='\033[0;31m'
boldRED='\033[1;31m'
yellow='\033[1;33m'
green='\033[0;32m'
blue='\033[0;34m'
purple='\033[0;35m'
nc='\033[0m'

while getopts ":h:" args;
do
	case $args in
	h)
		h=${OPTARG}
		if [[ ( ${h} == "help" ) || ( ${h} == "h" ) ]]
		then
			echo -e """${blue}Usage : It's a shell all you needa do is just execute the SpyShell.sh${nc}
${yellow}
SPYSHELL is a fancy interactive shell and can be used as a troll shell in ctfs
features : 1. It uses figlet to make it look fancy 
		   2. It has support of tmux themes
		   3. It works cool on tmux
		   
NOTE : It requires to install some tools to perform well${nc}

${boldRED}
QUOTE FROM MR.R0B0T:
	\"LIFE IS SO MUCH BETTER,
	 WHEN YOU'RE NUMB\"${nc}
${purple}
CREATED BY: Sp1d3y
SOCIAL LINKS:
	@shubham_lnx(twitter)
	@shubham.in.null_v01d(instagram)
${nc}
			"""
			exit 1
		else
			echo -e """${blue}
if you're looking for help then use \"help\" after the \"-h\" FLAG
		${nc}${yellow}or${nc}${blue}
to use spyshell just execute the file without any flag${nc} 
			"""
			exit 1
		fi
		;;
	esac
done

rlwrap ./Spy_ShellScript.sh
