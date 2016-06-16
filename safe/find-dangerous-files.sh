#!  env bash

find    /   -type   f   -perm   -2  -o  -perm   -20 |   xargs   ls  -al
find    /   -type   d   -perm   -2  -o  -perm   -20 |   xargs   ls  -ld

# s flag
find    /   -type   f   -perm   -4000  -o  -perm   -2000 |   xargs   ls  -al

# suid sgid
find    /   -user   root    -perm   -2000   -print  -exec   md5sum  {}  \;
find    /   -user   root    -perm   -4000   -print  -exec   md5sum  {}  \;

# no user
find    /   -nouser -o  -nogroup
