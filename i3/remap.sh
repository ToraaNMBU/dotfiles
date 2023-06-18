#!/bin/bash

xset r rate 400 25



xmodmap -e "clear lock" #disable caps lock switch
xmodmap -e "keysym Caps_Lock = Control_L" #set caps_lock as escape
xmodmap -e "add Control = Control_L" 


#xmodmap -e "keycode 43 = h H Left H" # h
#xmodmap -e "keycode 44 = j J Down J" # j
#xmodmap -e "keycode 45 = k K Up K" # k
#xmodmap -e "keycode 46 = l L Right L" # l
