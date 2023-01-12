#!/bin/bash
echo "<----------installing in background, Have some popcorns till then---------->"
run="sudo apt install nyancat && sudo apt install sl && sudo apt install cmatrix && sudo apt install figlet && sudo apt install rlwrap" 
eval ${run} &> /dev/null &

pid=$!
while kill -0 ${pid} &> /dev/null 
do

	echo -n "="
	sleep 1
done
echo -n ">"
echo ""
echo "<----------thanks for having patience---------->"

