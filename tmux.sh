#!/bin/sh
#
# name     : tmuxen， tmux environment made easy
# author   : Xu Xiaodong xxdlhy@gmail.com
# license  : GPL
# created  : 2012 Jul 01
# modified : 2012 Jul 02
#
SCRIPT=$0
cmd=$(which tmux) # tmux path
session="lucien"   # session name
is_kill=0

while [ -n "$1" ]
do
    case $1 in
        -h|--help)
            echo "
Usage: ${SCRIPT} [OPTION]... session...
New a session or kill a session

e.g. tmux.sh lucien
tmux.sh -k lucien

-k, --kill      kill the session
-h, --help      display this help and exit"
            exit 0
            shift 1
            ;;
        -k|--kill)
            is_kill=1
            shift 1
            ;;
        -[a-zA-Z0-9]*)
            echo "
${SCRIPT}: invalid option -- $1
Try ' --help' for more information.
(security version)"
            exit 1
            shift 1
            ;;
        *)
            session=$1
            shift 1
            ;;
    esac
done

if [ -z $cmd ]
then
	echo "You need to install tmux."
	exit 1
fi

$cmd has -t $session

if [ $? != 0 ]
then
    if [ "$is_kill" -eq "1" ]
    then
        echo -e "no such session"
        exit 1
    else
	    $cmd new -d -s $session -n shell1
	    $cmd splitw -h -t $session
	    $cmd splitw -v -t $session
	    $cmd neww -t $session -n shell2
	    $cmd splitw -h -t $session
	    $cmd selectw -t $session:0
    fi
fi

if [ "$is_kill" -eq "1" ]
then
    $cmd kill-session -t $session
else
    $cmd att -t $session -d
fi

exit 0
