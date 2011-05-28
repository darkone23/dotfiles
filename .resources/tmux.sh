#!/bin/bash
if tmux has-session -t 'master'; then
  tmux -2 attach-session -t 'master'
else
  tmux -2 new-session -s 'master'
fi
