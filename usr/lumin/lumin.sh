#!/bin/bash

# Code by NyanRay64 =3

arg=$1

return() { # This thing is a bit complex (at least for me, sorry im a C# programmer, not a SH) but this works well =D
    if [ "$2" = "" ] && [ "$3" = "" ]; then
        echo "Usage: $1 <command>"
    elif [ "$2" != "" ] &&  [ "$3" = "" ]; then
        echo "Usage: $1 $2 <command>"
    elif [ "$1" != "" ] && [ "$2" != "" ] && [ "$3" != "" ]; then
        echo "Usage: $1 $2 $3 <command>"
    fi
}
catch() {
    if [ "$2" = "" ]; then
        echo "Error, code: $1"
    elif [ "$2" != "" ]; then
        echo "Error, message: $2, code: $1"
    fi
}
if [ "$arg" = "update" ]; then
    echo "updating"
    chmod +x ~/container/LuminOS/usr/lumin/update.sh
    ./~/container/LuminOS/usr/lumin/update.sh
    #chmod +x update.sh
    #./update.sh
elif [ "$arg" = "fix" ] then
    echo "Reinstalling main container (this may take a while...)"
    chmod +x ~/container/LuminOS/usr/lumin/fix.sh
    ./~/container/LuminOS/usr/lumin/fix.sh
elif [ "$arg" = "" ]; then
    return lumin
    echo "Type help to see all avaiable commands"
elif [ "$arg" = "help" ]; then
    echo "avaiable commands:"
    echo "update: updates and refreshes all you packages"
    echo "start: start a internal program (like SDK shell)"
elif [ "$arg" = "start" ]; then
    if [ "$2" = "sdk" ]; then
        chmod +x ~/container/LuminOS/usr/lumin/overlay.sdkx
        ./~/container/LuminOS/usr/lumin/overlay.sdkx $3
    elif [ "$2" = "" ]; then
        return lumin start
    fi
elif [ "$arg" = "catch" ]; then
    echo "$2"
else
    echo "this command was not found. maybe try help?"
fi