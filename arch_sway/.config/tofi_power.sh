#!/usr/bin/env sh

case "$(echo -e "Shutdown\nRestart\nLogout\nSuspend\nLock" | tofi \
    --prompt-text "power:")" in
        Shutdown) exec systemctl poweroff;;
        Restart) exec systemctl reboot;;
        Logout) exec swaymsg exit;;
        Suspend) exec systemctl suspend;;
        Lock) exec swaylock -f -c 000000;;
esac
