#!/bin/bash
#/Users/kevinwu/scripts/web-d1.sh
 
SESSIONNAME="web-d1"
tmux has-session -t $SESSIONNAME $> /dev/null
 
if [ $? != 0 ]
	then
		# new session with name $SESSIONNAME and window 0 named "base"
		tmux new-session -s $SESSIONNAME -n base -d

		# commands
		tmux send-keys 'ssh kevinwu@util-d.identity.ucsb.edu' 'C-m'
		tmux send-keys 'tail -f /local/syslog/identity-info.log' 'C-m'

		# create pane
		tmux split-window -t $SESSIONNAME:0 -v

		# 2nd pane commands
		tmux send-keys 'ssh kevinwu@util-d.identity.ucsb.edu' 'C-m'
		tmux send-keys 'tail -f /local/syslog/php.log' 'C-m'

fi
 
tmux attach -t $SESSIONNAME
