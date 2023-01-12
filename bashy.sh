#!/bin/bash
#work in progress of this script haha
elif [[ ${cmd} == "grabip" ]]
then
    echo -n -e "${purple}"
    #noted one liner will be here check out in notes
    echo -n -e "${nc}"    
elif [[ ${cmd} == "init fun" ]]
then
    echo -n -e "${purple}"
    source initfun.sh
    ${run}
    echo -n -e "${nc}"    
elif [[ ${cmd} == "tmux themes" ]]
then
    echo -n -e "${purple}"
    
    echo -n -e "${nc}"    
elif [[ ${cmd} == "" ]]
then
    echo -n -e "${purple}"

    echo -n -e "${nc}"    

