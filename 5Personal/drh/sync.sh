#!/bin/bash

##########################################################
# IN PROGRESS !
# This script is unfinished.
# Do NOT use it unless you know what you're doing. 
##########################################################


###################################################
# This shell script is used to sync all my current 
# branches:
#
# └─$ git branch -vva
# * gitee                 93925d8 [gitee/master]
#   github                93925d8 [github/master]
#   master                efb0c7a [gitee/master]
#   remotes/gitee/master  93925d8
#   remotes/github/master 93925d8
###################################################

git switch gitee
git pull -v
echo ""

git switch master
git merge gitee
echo ""

git switch github
git merge gitee
git push -v
echo ""

echo_msg() {
	# msg indent color
	msg="$1"
	indent=$2
	color="3$3"
	[ color = "31" ] && tag='-'
	[ color = "32" ] && tag='+'
	[ color = "34" ] && tag='?'
	[ color = "38" ] && tag='*'
	echo -e "\e[$(($indent+1))C\e[0D\e[${color}m[$tag]\e[0m $msg"
}
