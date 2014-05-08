#!/bin/bash
# Quick an dirty FTP upload tool for box.com
# Author: Ryan Whalen
# 2014

#function for usage statement. Called later in the script
usage()
{
cat << EOF
	USAGE: $0 [OPTIONS]

	OPTIONS:
		-h	Prints this help message
		-u	set the username ex. ryan@gmail.com [Required]
		-f	filename you wish to upload
		-d	specify a directory to sync all files from
EOF
}

USER=""
FILE=""
DIR=""

if [[ $# -eq 0 ]];
then
	usage
	exit
fi

#getopt to get parameters
while getopts "hu:f:d:" OPTION; do
	case $OPTION in
		h)
			usage
			exit 1
			;;
		u)
			USER="$OPTARG"
			;;
		f)
			FILE="$OPTARG"
			;;
		d)
			DIR="$OPTARG"
			;;
		?)
			#print usage if there is an unknown variable
			usage
			exit
			;;
	esac
done

if [[ $DIR == "" ]];
then
	#run the actual curl for a single file or multiple files
	`curl -k \
		--disable-epsv \
		--ftp-skip-pasv-ip \
		-u "$USER" \
		--ftp-ssl \
		--upload-file {"$FILE"} \
		ftp://ftp.box.com/`
else
	FILE=`ls -l "$DIR" | awk 'NR!=1 && !/^d/ {print $NF}'| tr '\n' ',' | sed 's/.$//'`
	#run the curl for all files in a directory
	`curl -k \
		--disable-epsv \
		--ftp-skip-pasv-ip \
		-u "$USER" \
		--ftp-ssl \
		--upload-file {"$FILE"} \
		ftp://ftp.box.com/`
fi
#finish
