#/bin/bash
tmux send-keys -t 0 "tmux split-window -v '-l 21';tmux select-pane -t 1" Enter
tmux send-keys -t 0 "tmux select-pane -t 0; tmux split-window -h '-l 98';tmux select-pane -t 2" Enter
tmux send-keys -t 0 "tmux select-pane -t 2; tmux split-window -h '-l 134'; tmux select-pane -t 3" Enter
tmux send-keys -t 0 "tmux select-pane -t 3; tmux split-window -h '-l 66'; tmux select-pane -t 4" Enter

#./pentagon_asset

#echo "pentagon"