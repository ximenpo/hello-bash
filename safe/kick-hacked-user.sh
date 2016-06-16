#!  env     bash

#change the name
$hacked_user=nobody
passwd  -l  ${hacked_user}
ps      -ef | grep  @pts/3
pidof   sshd
kill    -9      xxxx

ls  -al     /proc/xxxx/exe
ls  -al     /proc/xxxx/fd

fuser   -n  tcp 25

more    /var/log/secure | grep  Accepted
