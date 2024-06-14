#!/bin/bash

VOLUME=$(pamixer --get-volume)

if [[ $VOLUME -ge 70 ]]; then
        echo "$VOLUME  " 
elif [[ $VOLUME -ge 30 ]]; then
        echo "$VOLUME  "
elif [[ $VOLUME -gt 0 ]]; then
        echo "$VOLUME  "
elif [[ $VOLUME -eq 0 ]]; then
        echo "$VOLUME  "
else
        echo "󱄡"
fi
