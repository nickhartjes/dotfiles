#!/bin/sh

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

run nm-applet
run caffeine &
run pamac-tray
run xfce4-power-manager
run /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1
run numlockx on
run volumeicon
run flameshot

run feh --bg-fill --randomize ~/.wallpapers

if [ "$HOSTNAME" = "arco-laptop" ]; then
    run bluebery-tray
    xrandr --auto --output HDMI1 --mode 1920x1080 --left-of eDP1
fi

if [ "$HOSTNAME" = "arco-desktop" ]; then
    echo "Arco Desktop loaded"
    xrandr --output DisplayPort-0 --primary --mode 2560x1440 --pos 0x500 --rotate normal --output DisplayPort-1 --mode 2560x1440 --pos 2560x0 --rotate left --output DisplayPort-2 --off --output HDMI-A-0 --off
fi
