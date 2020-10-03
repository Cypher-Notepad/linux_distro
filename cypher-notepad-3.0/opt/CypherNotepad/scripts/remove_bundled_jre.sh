#!/bin/bash
#
# @file remove_bundled_jre.sh
# @author LeeDongGeon1996
# @date 20.10.02
# @description This script will remove bundled JRE of CypherNotepad(3.0)
#
RED='\033[0;31m'
NC='\033[0m' # No Color
java_version=`java -version 2>&1 | grep 'java version' | awk 'NR==1{ gsub(/"/,""); print $3 }'`
function remove() {
	if [ -d "/opt/CypherNotepad/runtime" ]
	then
		rm -rf /opt/CypherNotepad/runtime
		echo "remove /opt/CypherNotepad/runtime"
	fi

	if [ -f "/opt/CypherNotepad/CypherNotepad" ]
	then
		rm -rf /opt/CypherNotepad/CypherNotepad
		echo "remove /opt/CypherNotepad/CypherNotepad"
	fi

	echo "Bundled JRE is removed."
}

if [ "$java_version" == "" ]
then
	echo -e "${RED}No detected any version of JRE. If you continue, Cypher Notepad won't be able to be launched.${NC}"
fi

while true; do
	read -p "Do you really want to remove bundled JRE [Y/N]?" ans
	case $ans in
		[Yy]* ) remove; break;;
		[Nn]* ) echo "Removing bundled JRE is canceled."; break;;
	esac
done
