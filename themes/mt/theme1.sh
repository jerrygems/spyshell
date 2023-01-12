#/bin/bash
tmux send-keys -t 0 "tmux split-window -h '-l 98';tmux select-pane -t 1" Enter
tmux send-keys -t 0 "tmux select-pane -t 0; tmux split-window -v '-l 23';tmux select-pane -t 1" Enter
tmux send-keys -t 0 "tmux select-pane -t 2; tmux split-window -v '-l 23'; tmux select-pane -t 3" Enter
echo "square"