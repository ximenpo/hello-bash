#!  env     bash

#适合Centos5的Sendmail服务￼ 
find /var/spool/clientmqueue/ -type f|xargs rm -f￼ 

#适合CentOS6的Postfix服务
find /var/spool/postfix/maildrop/ -type f|xargs rm -f￼ 
