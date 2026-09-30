#!/bin/bash

text="(1.light 2.dark 3.gotham 4.warm 5.Hack) Enter : "

read -p "$(echo $text)" in_put

in_text="import = [\"~/.config/alacritty/themes/themes/${in_put}\"]"
mode=""
if [ $in_put -eq 1 ]; then
	mode="everforest_light_soft.toml"
elif [ $in_put -eq 2 ]; then
	mode="everforest_dark_soft.toml"
elif [ $in_put -eq 3 ]; then
	mode="gotham.toml"
elif [ $in_put -eq 4 ]; then
	mode="inferno.toml"
elif [ $in_put -eq 5 ]; then
	mode="baitong.toml"
else
	mode= "invalid"
fi
#if u want add more modes, pay attantion to change final process part for invalid values

in_text="import = [\"~/.config/alacritty/themes/themes/${mode}\"]"

in_text2="[window]"
in_text3="opacity=0.95"

#final process
if [[ $mode == "invalid" ]]; then
	exit 2
fi

echo $in_text > ~/.config/alacritty/alacritty.toml
echo $in_text2 >> ~/.config/alacritty/alacritty.toml
echo $in_text3 >> ~/.config/alacritty/alacritty.toml
exit 0
