#! env bash

for item in         \
    anacron         \
    auditd          \
    autofs          \
    avahi-daemon    \
    avahi-dnsconfd  \
    bluetooth       \
    cpuspeed        \
    firstboot       \
    gpm             \
    haldaemon       \
    hidd            \
    ip6tables       \
    ipsec           \
    isdn            \
    lpd             \
    mcstrans        \
    messagebus      \
    netfs           \
    nfs             \
    nfslock         \
    nscd            \
    pcscd           \
    portmap         \
    readahead_early \
    restorecond     \
    rpcgssd         \
    rpcidmapd       \
    rstatd          \
    sendmail        \
    setroubleshoot  \
    yppasswdd       \
    ypserv          \
    ; do
    chkconfig --level 345 ${item} off > /dev/null 2>&1
done
