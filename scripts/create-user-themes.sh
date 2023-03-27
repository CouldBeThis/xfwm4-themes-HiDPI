#!/bin/bash

## A very simple script to create theme diretories
## in your USER folder.
## Comment out any sizes you don't want
## More info: https://github.com/CouldBeThis/xfwm4-themes-HiDPI

# 	echo -e "ThisScriptDirRel is $ThisScriptDirRel"
## import delcations (but hide the output)
# source "declarations.sh" > /dev/null

ThisScriptDirRel="$(dirname "$0")"
# 	echo -e "ThisScriptDirRel is $ThisScriptDirRel"
## import delcations (but hide the output)
source "$ThisScriptDirRel/declarations.sh" #> /dev/null

echo -e "$c\ee------------------------"
echo "A very simple script to create theme diretories in your USER folder."

echo -e "CHECK: Is the script being run from the correct driectory?"
	if [ $ThisScriptDirAbs = "$WorkingDir" ]
	then
		echo -e "Yes"
		export CheckRunDir=Yes
	else
		echo -e "$r$b\eeEXITING:$bo please ONLY run this script from the $u\eescripts$uo subdirectory of the repo"
		echo -e "Your $u\eeworking dir$uo is $b$WorkingDir$bo"
	echo -e "The $u\eecorrect dir$uo is  $b$ThisScriptDirAbs$bo"
		export CheckRunDir=No
		exit
	fi

echo "$oo$bl^^^^^^^^^^^^^^^^^^^^^^^^^"









echo -e "Hit $b\eeenter$bo to continue, $b\eectrl-c$bo to exit"
read -p "OK?" InputValue


mkdir -p $ThemeDestDir

cd $ThemeSourceDir

# ls -1 | xargs -I @ ln -s $PWD/@ $ThemeDestDir

cd $ThemeDestDir


Scale="1-28x"
ScaledSourceDir="$ThemeSourceDir/$Scale"
	echo -e "$m$u\eeScaledSourceDir$uo:	$b$ScaledSourceDir$bo
	↳ Directory containing subdirectories of scaled themes$bl"

cd $ScaledSourceDir

ls -1 | xargs -I @ ln -s $PWD/@ $ThemeDestDir/$Scale-@
# ls -1 | xargs -I @ ln -s $PWD/@ ~/.themes/200-@



# cp -r * ~/.themes

echo "DONE$oo"
