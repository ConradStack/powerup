# powerup
Various powershell scrips for mac OS and windows



#### wmd5.ps1
Calculate md5 digests for one or more files, similar to the ```md5sum``` command in linux.  Calling the script from powershell vs bash is slightly different. In bash, only a single filename or wildcard can be passed (see ```USAGE``` block below).

```
# USAGE:
## powershell> ./winmd5 [-out filename] infile1 infile2 ...
## bash> ./winmd5.ps1 [-out filename] "infile*" | "infile1" 
```
