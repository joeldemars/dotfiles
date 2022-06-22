#!/bin/sh

swaymsg -t get_tree | jq -e '.. | try select(.focused == true) | .app_id != "kitty"' && wtype -M ctrl -k Page_Up -m ctrl
