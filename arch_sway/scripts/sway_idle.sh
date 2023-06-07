#!/bin/sh

exec swayidle -w \
         timeout 300 'bash -e /home/noncomplete/lock.sh' \
         timeout 600 'swaymsg "output * dpms off"' resume 'swaymsg "output * dpms on"' \
         before-sleep 'bash -e /home/noncomplete/lock.sh'
