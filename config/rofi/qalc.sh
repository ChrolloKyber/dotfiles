#!/usr/bin/env bash

HISTORY_FILE="$HOME/.config/rofi/history_qalc"


if [[ -n "$1" ]]; then
    RESULT=$(qalc "$1")
    echo -e "$RESULT"
    echo "$RESULT" >> "$HISTORY_FILE"
else
    HISTORY=$(tail "$HISTORY_FILE" | awk '{print $0}')
    echo "$HISTORY"
fi
