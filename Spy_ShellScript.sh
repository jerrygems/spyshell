#!/bin/bash -i

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
#ascii art
first="""
              &    &&&&&    &&&&&  &
            &    &&,             &&*  &
         &&     &&                &&   &&
         
        &&     &&&&&   &   &    &&&&&   *&
       &&       &&&&  &&&&&&&   &&&       &&
       &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
     &            &&&&&&&&&&&&&&&            &
              &&&&&&&& &&&&& &&&&&&&&
        &&&&&&&  &&&  &&&&&&& &&&  &&&&&&&&
       &&&      &&&& &&&&&&&&& &&&&      &&&
        &&& &&&&  &&&&&&&&&&&&&&  &&&&  &&&
        &&&  &&&   &&&&&&&&&&&&&   &&&  &&&
          &&  &&&   &&&&&&&&&&&   &&&  &&
           &&  &&    %&&&&&&&%    &&  &&
            &&  &&      &&&      &&  &&
              &  &&&&         &&&&  %
                &                 &
"""
second="""
              &    &&&&&    &&&&&  &
            &    &&,             &&*  &
         &&     &&                &&   &&
        &&     &&&&&   &   &    &&&&&   *&
       &&       &&&&  &&&&&&&   &&&       &&
       &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
     &            &&&&&&&&&&&&&&&            &
              &&&&&&&& &&&&& &&&&&&&&
        &&&&&&&  &&&  &&&&&&& &&&  &&&&&&&&
        &&&      &&&& &&&&&&&&& &&&&      &&&
        &&& &&&&  &&&&&&&&&&&&&&  &&&&  &&&
        &&&  &&&   &&&&&&&&&&&&&   &&&  &&&
          &&  &&&   &&&&&&&&&&&   &&&  &&
           &&  &&    %&&&&&&&%    &&  &&
            &&  &&      &&&      &&  &&
              &  &&&&         &&&&  %
                &                 &
"""
third="""
                 &                &
           &  &&                    &&  &
         &  &&,                      &&*  &
      &&   &&                         &&   &&
     &&    &&&&&       &   &        &&&&&   *&
    &&        /&&&&   &&&&&&&   &&&&         &&
    &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
     &            &&&&&&&&&&&&&&&            &
              &&&&&&&& &&&&& &&&&&&&&
        &&&&&&&  &&&  &&&&&&& &&&  &&&&&&&&
       &&&      &&&& &&&&&&&&& &&&&      &&&
        &&& &&&&  &&&&&&&&&&&&&&  &&&&  &&&
        &&&  &&&   &&&&&&&&&&&&&   &&&  &&&
         &&   &&    &&&&&&&&&&&    &&   &&
          &&  &&&   &&&&&&&&&&&   &&&  &&
           &&  &&    %&&&&&&&%    &&  &&
            &&  &&      &&&      &&  &&
              &  &&&&         &&&&  %
                &                 &
"""

fourth="""
               &                   &
          &  &&                     &&  &
        &  &&,                       &&*  &
      &&   &&                         &&   &&
     &&    &&&&&       &   &        &&&&&   *&
    &&        /&&&&   &&&&&&&   &&&&         &&
    &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
     &            &&&&&&&&&&&&&&&            &
             &&&&&&&&  &&&&&  &&&&&&&&
    &&&&&&&&&   &&&   &&&&&&&   &&&   &&&&&&&&&
     &&&      &&&&   &&&&&&&&&   &&&&      &&&
     &&&   &&&&   &&&&&&&&&&&&&&&   &&&&   &&&
     &&&    &&&    &&&&&&&&&&&&&    &&&    &&&
      &&     &&     &&&&&&&&&&&     &&     &&
      &&     &&&    &&&&&&&&&&&    &&&     &&
       &&     &&     %&&&&&&&%     &&     &&
        &&     &&       &&&       &&     &&
          &     &&               &&     %
                   &           %
"""
fifth="""
              &                     &
       &    &&                       &&    &
      &   &&,                         &&*   &
     &&   &&                           &&   &&
    &&    &&&&&        &   &        &&&&&   *&&
    &&        /&&&&   &&&&&&&   &&&&         &&
    &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
     &            &&&&&&&&&&&&&&&            &
             &&&&&&&&  &&&&&  &&&&&&&&
   &&&&&&&&&&   &&&   &&&&&&&   &&&   &&&&&&&&&&
    &&&      &&&&   &&&&&&&&&&&   &&&&      &&&
    &&&   &&&&   &&&&&&&&&&&&&&&&&   &&&&   &&&
    &&&    &&&    &&&&&&&&&&&&&&&    &&&    &&&
     &&     &&     &&&&&&&&&&&&&     &&     &&
     &&     &&&    &&&&&&&&&&&&&    &&&     &&
      &&     &&     %&&&&&&&&&%     &&     &&
       &&     &&       &&&&&       &&     &&
         &     &&                 &&     %
                  &             % 
"""
sixth="""
    o__ __o                __o            o      o__ __o                
   /v     v\               __|>          <|>    /v     v\               
  />       <\                |           < \   />       <\              
 _\o____        \o_ __o     <o>     o__ __o/            o/    o      o  
      \_\__o__   |    v\     |     /v     |           _<|    <|>    <|> 
            \   / \    <\   < >   />     / \             \   < >    < > 
  \         /   \o/     /    |    \      \o/  \          /    \o    o/  
   o       o     |     o     o     o      |     o       o      v\  /v   
   <\__ __/>    / \ __/>   __|>_   <\__  / \    <\__ __/>       <\/>    
                \o/                                              /      
                 |                                              o       
                / \                                          __/> 
"""



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
    echo -e -n "${blue}"
    read -r -p "Are you sure you want to exit? (y/n) " confirm
    echo -e -n "${nc}"
    if [ "$confirm" = "y" ]; then
        echo -n -e "${blue}Exiting the script${nc}"
        exit
    else
    	echo -n -e "${blue}Cancled${nc}"
    fi
}

#here mr.robot
mr_robot(){
	clear
	echo "3" | figlet
	sleep 1
	echo "2" | figlet
	sleep 1
	clear
	echo "1" | figlet
	sleep 1
	clear
	echo "Mr.Robot aka 'Elliot Alderson'" | figlet
	sleep 1
	clear
	
	
	
}

echo -e "${yellow}welcome to ${nc}${red}Sp1d3y's${nc}${yellow} naughty shell try any command like \"hello\"${nc}"

while :
do

        #easy life things
        name=$(whoami)
        extVar=" in "
        prompt=$'\033[1;33m;-)\033[0m\033[1;31m'${name}$'\033[0m\033[1;34m@'$(hostname)$'\033[0m\033[1;32m'${extVar}$'\033[0;34m'$(pwd)$'\033[0m\033[0;35m>>\033[0m\033[1;31m🕸️ \033[0m';
        echo -n -e "${blue}"
        read -i -e -p "${prompt} " cmd
        history -s ${cmd}
        echo -n -e "${nc}"

        #figlet art
        if [[ ${cmd} == "hello" ]]
        then

			echo -e "${yellow}welcome to ${nc}${red}Sp1d3y's${nc}${yellow} naughty shell${nc}"
			echo -n -e "${boldRED}"
			while :; do clear;echo -e "${first}" ; sleep 0.1;clear; echo -e "${second}" ; sleep 0.1;clear; echo -e "${third}" ; sleep 0.1;clear; echo -e "${fourth}" ; sleep 0.1; break; done;
			while :; do clear;echo -e "${first}" ; sleep 0.1;clear; echo -e "${second}" ; sleep 0.1;clear; echo -e "${third}" ; sleep 0.1;clear; echo -e "${fourth}" ; sleep 0.1; break; done;
			while :; do clear;echo -e "${first}" ; sleep 0.1;clear; echo -e "${second}" ; sleep 0.1;clear; echo -e "${third}" ; sleep 0.1;clear; echo -e "${fourth}" ; sleep 0.1; break; done;
			figlet -f small.flf "${cmd} $(whoami)"
			echo -n -e "${nc}"
        elif [[ ${cmd} == "initfun" || ${cmd} == "InitFun" || ${cmd} == "ini" || ${cmd} == "INITFUN" ]]
        then
			echo -n -e "${purple}"
			eval FILE=$(find /home /root /usr/bin -name initfun.sh -exec grep -q "SpyShell" {} \; -print -quit)
			echo -n -e "${nc}"
        elif [[ ${cmd} == "spidey" || ${cmd} == "spy" || ${cmd} == "sp1d3y" ]]
        then
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
	elif [[ ${cmd} == "whereami" ]]
	then
			echo -n -e "${boldRED}"
			eval "pwd | figlet -f 'smbraille.flf'"
			echo -n -e "${nc}"
	elif [[ ${cmd} == "whichDistro" ]]
	then
			echo -n -e "${blue}"
			uname | figlet -f "small.flf"
			cat /etc/os-release | grep --color=never -w "NAME"
			cat /etc/os-release | grep --color=never -w "VERSION"
			lscpu | tr -s " " | grep --color=never -w "Architecture"
			echo -n -e "CPU:"
			lscpu | tr -s " " | grep --color=never -w "Model name:"
			echo -n -e "Kernel:"
			eval "uname -r"
		
			echo -n -e "${nc}"
	elif [[ ${cmd} == "SplitV" ]]
    	then
    			echo -n -e "${purple}"
	    		tmux split-window -v -c "./" "./SpyShell.sh"
	    		tmux set -g mouse on
	    		echo -n -e "${nc}"
	elif [[ ${cmd} == "SplitH" ]]
	then
	    		echo -n -e "${purple}"
	    		tmux split-window -h -c "./" "./SpyShell.sh"
	    		echo -n -e "${nc}"
    	elif [[ ${cmd} == "tmux" ]]
    	then
	    		echo -n -e "${purple}"
	    		tmux new-session -n "SpyShell" "$(dirname "$0")/SpyShell.sh"
	    		echo -n -e "${nc}"
	elif [[ ${cmd} == "MRROBOT" || ${cmd} == "mr.robot" || ${cmd} == "mrrobot" || ${cmd} == "MrRobot" || ${cmd} == "Mr.Robot" || ${cmd} == "elliot" || ${cmd} == "ELLIOT" ]]
	then
			echo -n -e "${purple}"
			mr_robot
			echo -n -e "${nc}"
	elif [[ ${cmd} == "binAnalyzer" ]]
	then
			echo -n -e "${red}"
			echo "Analyzing binary..." | figlet -f "small.flf"
			echo -n -e "${nc}"
	elif [[ ${cmd} == "crackIt" ]]
	then
			echo -n -e "${purple}"
			echo "crackIt" | figlet -f "small.flf"
			echo -n -e "${nc}"
	elif [[ ${cmd} == "themeDefault" ]]
	then
			echo -n -e "${purple}"
			eval themes/mt/defaultTheme
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
