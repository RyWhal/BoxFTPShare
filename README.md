BoxShare
========

Simple script to upload files to box.com via FTP. 


USAGE
======
```
	USAGE: ./boxshare.sh [OPTIONS]

	OPTIONS:
		-h		Prints this help message
		-u		Set the username ex. ryan@example.com
		-f		Filename to upload
```


Upload a file by passing your username and the filename. You will be prompted for your password.
```
$ ./boxshare.sh -u ryan@example.com -f fileA
Enter host password for user 'ryan@example.com':
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:--  0:00:01 --:--:--     0
```


Or, you can upload multiple files at once, using comma seperate file names.
```
$ ./boxshare.sh -u ryan@example.com -f fileA,fileB
Enter host password for user 'ryan@example.com':
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:--  0:00:01 --:--:--     0
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
```
