#!/bin/bash

mode="default"
image="$HOME/Bilder/Backgrounds/lock.png"

case "$mode" in
	default)
		i3lock -i $image
		;;

	blur)
		scrot /tmp/screen.png
		convert /tmp/screen.png -scale 20% -scale 500% /tmp/screen.png
		[[ -f "$image" ]] && convert /tmp/screen.png "$image" -gravity center -composite -matte /tmp/screen.png
		i3lock -i /tmp/screen.png
		rm /tmp/screen.png
		;;
esac
