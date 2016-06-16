#! env bash

#chattr     -RV    [+-=]acisu      ${item}
#lsattr     -adlRvV     ${items}

for item in \
    /bin    \
    /sbin   \
    /boot   \
    /lib    \
    /lib64  \
    /usr/bin    \
    /usr/sbin   \
    /usr/lib    \
    /usr/lib64  \
    /usr/include    \
    ; do
    #statements
    chattr  -R  +i  ${item}
done

for item in \
    /etc/passwd    \
    /etc/shadow    \
    /etc/hosts     \
    /etc/resolv.conf    \
    /etc/fstab     \
    /etc/sudoers   \
    ; do
    #statements
    chattr  +i  ${item}
done

for item in \
    /var/log/messaes    \
    /var/log/wtmp       \
    ; do
    #statements
    chattr  +a  ${item}
done
