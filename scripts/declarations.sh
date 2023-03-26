## this file has variable shared between scripts

# ###################### HOW TO USE ######################
# ## If script is to be run from outside of the actual directory where it lives, it will not be able to find the sourced file.
# ## So need to make sure bash knows where to find the file.
# ## If other problems encoutnered, see the file itself for more
# ## information and possiblities
# ThisScriptDirRel="$(dirname "$0")"
# # 	echo -e "ThisScriptDirRel is $ThisScriptDirRel"
# ## import delcations (but hide the output)
# source "$ThisScriptDirRel/declarations.sh" > /dev/null
# ########################################################

####### text style
	##	Underline
		u=$(tput smul)		## on
		uo=$(tput rmul)		## off
	## Bold (short)
		b=$(tput smso)		## on
		bo=$(tput rmso)		## off
	## set foreground color
		bk=$(tput setaf 0)	## $bk
		r=$(tput setaf 1)	## $r
		g=$(tput setaf 2)	## $g
		y=$(tput setaf 3)	## $y
		bl=$(tput setaf 4)	## $bl
		m=$(tput setaf 5)	## $m
		c=$(tput setaf 6)	## $c
		w=$(tput setaf 7)	## $w
		oo=$(tput sgr0)		## $oo	## reset all attributes

echo -e "$r	~~~~~~ DECLARATIONS - variables"

#######  variable declarations
	### Date stamps
		DateTimeStamp=$(date +"%y%m%d-%H%M%S")
		echo -e "$u\eeDateTimeStamp$uo is $b$DateTimeStamp$bo"
		DateStamp=$(date +"%y%m%d")
		echo -e "$u\eeDateStamp$uo is $b$DateStamp$bo"
		DatePlain=$(date)
		echo -e "$u\eeDatePlain$uo is $b$DatePlain$bo"
	### Metadata - Script
		## These values may be useful when script is run
		## outside of its original directory, particularly
		## if it references (includes, sources) other files
		## may need to include these BEFORE including THIS
		## file ... to be updated as I learn more
		## see: https://stackoverflow.com/q/192292
		##  - Also: this will need to work differently if called from $PATH, see link
		ThisScriptDirRel="$(dirname "$0")"
			echo -e "$u\eeThisScriptDirRel$uo is $b$ThisScriptDirRel$bo"
		ThisScriptDirAbs=$(dirname $(readlink -f $0))
			echo -e "$u\eeThisScriptDirAbs$uo is $b$ThisScriptDirAbs$bo"

	###	Metadata
		WorkingDir=$PWD
			echo -e "$u\eeWorkingDir$uo is $b$WorkingDir$bo"
		ThisScript=$(basename "$0")
			echo -e "$u\eeThisScript$uo is $b$ThisScript$bo"
		CurrentUser=$(whoami)
			echo -e "$u\eeCurrentUser$uo is $b$CurrentUser$bo"

##
echo "	~~~~~~ end$oo"
