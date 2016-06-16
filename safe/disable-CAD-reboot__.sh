#!  env  bash

#   v5.x
#   #1. comment in /etc/inittab
#   ca::ctrlaltdel:/sbin/shutdown -t3 -r now
#   #2. exec
#   telinit q

#   v6.x
#   comment in /etc/inittab
#   exec    /sbin/shutdown  -r  now "Control-Alt-Delete pressed"
