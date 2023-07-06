#!/bin/bash
if [ -n "$1" ]
then
    
    wget "$1"

    if [ -n "$2" ]
    then
        echo "Shutdow in $2 secondes..."
        sleep 5
        shutdown -h "$2"
    else
        echo "Download finished."
        exit 0
    fi
else
    echo "Any argument entered"
fi
