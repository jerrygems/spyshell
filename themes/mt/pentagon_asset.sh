#/bin/bash
tmux send-keys -t 0 "nmap -A -sV reliance.reliance"
tmux send-keys -t 0 "" Enter
tmux send-keys -t 1 "tmux select-pane -t 1 ;wafw00f reliance.reliance;tmux select-pane -t 5;"
tmux send-keys -t 1 "" Enter
tmux send-keys -t 2 "tmux select-pane -t 2 ;subfinder -d reliance.reliance;tmux select-pane -t 5;"
tmux send-keys -t 2 "" Enter
tmux send-keys -t 3 "tmux select-pane -t 3 ;dirb http://reliance.reliance /usr/share/wordlists/dirbuster/directory-list-lowercase-2.3-small.txt;tmux select-pane -t 5;"
tmux send-keys -t 3 "" Enter
tmux send-keys -t 4 "tmux select-pane -t 4 ;hydra -l user -P passlist.txt ftp://reliance.reliance;tmux select-pane -t 5;"
tmux send-keys -t 4 "" Enter 