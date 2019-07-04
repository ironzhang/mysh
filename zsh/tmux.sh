#!/bin/sh

tl() { tmux list-sessions; }
ta() { tmux attach -t "$1"; }
ts() { tmux new -s "$1" ;}

