#!/bin/bash

SESSION="sumit"

# Check if the session already exists
if ! tmux has-session -t "$SESSION" 2>/dev/null; then
  # Create new detached session
  tmux new-session -d -s "$SESSION"

  # Create vertical split in the first window
  tmux split-window -h -t "$SESSION"

  # Arrange panes in tiled layout
  # tmux select-layout -t "$SESSION" tiled
fi

# Attach to the session
tmux attach -t "$SESSION"
