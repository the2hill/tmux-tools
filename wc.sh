#!/bin/bash
 
tmux new-session -d
tmux source-file ~/.tmux.conf
tmux split-window -d -t 0 -v
tmux split-window -d -t 0 -h
tmux split-window -d -t 2 -h
tmux select-pane -t 1
tmux resize-pane -R  20
 
tmux send-keys -t 1 'weechat' enter C-l

## Just a convenience shell
tmux select-pane -t 1
 
tmux attach
 
