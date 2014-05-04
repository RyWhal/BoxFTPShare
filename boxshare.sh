# Quick FTP upload tool for box.com
# Author: Ryan Whalen
# 2014

#function for usage statement. Called later in the script
usage()
{
	cat << EOF
	USAGE: $0 [OPTIONS]

	OPTIONS:
		-h		Prints this help message
		-u		set the username ex. ryan@gmail.com
		-f		filename you wish to upload
EOF
}

#declare variables
USER=""
FILE=""

#getopt to get parameters
while getopts "hu:f:" OPTION; do
	case $OPTION in
		h)
			usage
			exit 1
			;;
		u)
			user="$OPTARG"
			;;
		f)
			file="$OPTARG"
			;;
		?)
			#print usage if there is an unknown variable
			usage
			exit
			;;
	esac
done

# Box's FTP help page: https://support.box.com/hc/en-us/articles/200520128
#run the actual curl command
`curl -k \
	--disable-epsv \
	--ftp-skip-pasv-ip \
	-u "$user" \
	--ftp-ssl \
	--upload-file {"$file"} \
	ftp://ftp.box.com/`
