#!/bin/bash
du -sh ~/Library
if [ -z '((find ~/Library -name "42_cache" 2> /dev/null))' ]
then
	  echo "Cache is empty! Nothing to be done."
  else
	  read -p "Clean cache? (y/n): " item
	 case "$item" in
y|Y|yes) rm -rf ~/Library/*42_cache* 2> /dev/null
echo "Complite. Cache is empty!" 2> /dev/null
	;;
	n|N|no) echo "Exit"
	exit 1
	;;
	*) echo "Nothing to be done"
	;;
 esac
fi
