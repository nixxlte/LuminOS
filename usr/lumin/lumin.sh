#!/bin/bash

arg=$1

if [ "$arg" = "update" ]; then
    echo "updating"
    echo " this page is intentionally blank for now"
else
    echo "this command was not found. maybe try help?"
fi