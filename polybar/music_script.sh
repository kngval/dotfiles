#!/bin/bash

if playerctl status | grep -q Playing; then
    playerctl metadata --format "🎵  {{ artist }} - {{ title }}"
elif playerctl status | grep -q Paused; then
    playerctl metadata --format "⏸️  {{ artist }} - {{ title }}"
else
    echo "⏹️  Not playing"
fi

