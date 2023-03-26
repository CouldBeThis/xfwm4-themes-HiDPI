#!/bin/bash

## A very simple script to create theme diretories
## in your USER folder.
## Comment out any sizes you don't want
## More info: https://github.com/CouldBeThis/xfwm4-themes-HiDPI

# 	echo -e "ThisScriptDirRel is $ThisScriptDirRel"
## import delcations (but hide the output)
source "declarations.sh" > /dev/null

echo -e "$c\ee------------------------"
echo "A very simple script to create theme diretories in your USER folder."
echo -e "Hit $b\eeenter$bo to continue, $b\eectrl-c$bo to exit"
read -p "OK?" InputValue



# themes-100
# themes-128
# themes-150
# themes-175
# themes-200
# themes-300

# ls -1 | xargs -I @ ln -s $PWD/@ ~/.themes/200-@













echo "DONE$oo"
