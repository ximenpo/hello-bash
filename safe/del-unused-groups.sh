#! env bash

for item in     \
    adm         \
    lp          \
    news        \
    uucp        \
    games       \
    dip         \
    pppusers    \
    popusers    \
    slipusers   \
    ; do
    grep -q "${item}" /etc/group &&  {
        echo        erase ${item}
        groupdel    ${item}
    }
done
