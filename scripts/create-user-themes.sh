#!/bin/bash

## A very simple script to create theme diretories
## in your USER folder.
## Comment out any sizes you don't want
## More info: https://github.com/CouldBeThis/xfwm4-themes-HiDPI

## import delcations (but hide the output)
source "$ThisScriptDirRel/declarations.sh" > /dev/null

echo -e "$c\ee------------------------"
echo "A very simple script to create theme diretories in your USER folder."
echo -e "Hit $b\eeenter$bo to continue, $b\eectrl-c$bo to exit"
read -p "OK?" InputValue



# ls -1 | xargs -I @ ln -s $PWD/@ ~/.themes/200-@













echo "DONE$oo"
