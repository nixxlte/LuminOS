#!/bin/bash

# Code by NyanRay64 =3

arg=$1

return() {
    if [ "$2" = "" ] && [ "$3" = "" ]; then
        echo "Usage: $1 <command>"
    elif [ "$2" != "" ] &&  [ "$3" = "" ]; then
        echo "Usage: $1 $2 <command>"
    elif [ "$1" != "" ] && [ "$2" != "" ] && [ "$3" != "" ]; then
        echo "Usage: $1 $2 $3 <command>"
    fi
}

if [ "$arg" = "update" ]; then
    echo "updating"
    echo " this page is intentionally blank for now" # this will run the update.sh
elif [ "$arg" = "" ]; then
    return lumin
    echo "Type help to see all avaiable commands"
elif [ "$arg" = "help" ]; then
    echo "avaiable commands:"
    echo "update: updates and refreshes all you packages"
    echo "start: start a internal program (like SDK shell)"
elif [ "$arg" = "start" ]; then
    if [ "$2" = "sdk" ]; then
        chmod +x ~/container/usr/lumin/overlay.sdkx
        ./~/container/usr/lumin/overlay.sdkx
    elif [ "$2" = "" ]; then
        return lumin start
    fi
else
    echo "this command was not found. maybe try help?"
fi