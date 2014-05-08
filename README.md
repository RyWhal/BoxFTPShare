BoxShare
========

Simple script to upload files to box.com enterprise/business accounts via FTP.


USAGE
======
```
	USAGE: ./boxshare.sh [OPTIONS]

	OPTIONS:
		-h	Prints this help message
		-u	set the username ex. ryan@example.com [Required]
		-f	filename you wish to upload
		-d	specify a directory to sync all files from
```


Upload a file by passing your username and the filename. You will be prompted for your password.
```
$ ./boxshare.sh -u ryan@example.com -f fileA
Enter host password for user 'ryan@example.com':
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:--  0:00:01 --:--:--     0
```


You can upload multiple files at once, using comma seperate file names.
```
$ ./boxshare.sh -u ryan@example.com -f fileA,fileB
Enter host password for user 'ryan@example.com':
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:--  0:00:01 --:--:--     0
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
```

Lastly, You can upload all of the files in a given directory. This option will ignore any subdirectories.
```
$ ./boxshare.sh -d /home/rwhalen -u ryan@example.com
Enter host password for user 'ryan@example.com':
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  1209    0     0  100  1209      0    510  0:00:02  0:00:02 --:--:--   520
100  368k    0     0  100  368k      0   433k --:--:-- --:--:-- --:--:--  433k
100  1074    0     0  100  1074      0   1385 --:--:-- --:--:-- --:--:--  1385
100  2904    0     0  100  2904      0   2070  0:00:01  0:00:01 --:--:--     0
```
