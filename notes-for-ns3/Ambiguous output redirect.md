```
Only >& works in csh or tcsh

[soum@server ~]$  ./test.sh > logfile 2>&1
Ambiguous output redirect.
[soum@server ~]$ ./test.sh &> logfile
Invalid null command.
[soum@server ~]$ ./test.sh >& logfile
[soum@server ~]$ echo $SHELL
/bin/tcsh
[soum@server ~]$
In ksh only 2>&1 works.

$ ./test.sh >& logfile
-ksh: logfile: bad file unit number
$ ./test.sh &> logfile
[1]     23039
$ 1  2  3  4  5  6  logfile  test.sh
ls: cannot access ttr: No such file or directory

[1] +  Done(2)                 ./test.sh &> logfile
```
