!#/usr/bin/env bash

xgamma -gamma 0.8
xmodmap -e "remove Lock = Caps_Lock"
xmodmap -e "keysym Caps_Lock = Control_L"
xmodmap -e "add Control = Control_L"

