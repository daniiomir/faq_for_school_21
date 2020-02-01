#!/bin/bash
if [ -z "`find ~/Library -name "*42_cache*" -type d -maxdepth 1 2> /dev/null`" ]
then
	echo "Cache is empty, nothing to be done."
else
	read -p "Clean cache? (y/n): " item
	case "$item" in
		y|Y|yes) rm -rf ~/Library/*42_cache* 2> /dev/null
		echo "Done. Cache removed"
		;;
		n|N|no) echo "Exit"
		;;
		*) echo "Wrong response, answer \"y|Y|yes\" or \"n|N|no\""
		;;
	esac
fi
