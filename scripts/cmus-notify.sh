#!/bin/sh
# Simple script to query cmus, get first three tags,
# format them, and send them as a notification.

get_info=$(echo "$(cmus-remote -Q)" | \
           grep tag | head -n 3 | cut -d ' ' -f 2- | \
           sed 's/\(.\)/\U\1/;s/ /: /1' )
notify-send -t 4200 "$get_info"
