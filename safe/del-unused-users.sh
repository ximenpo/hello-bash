#! env bash

for item in     \
    adm         \
    lp          \
    sync        \
    shutdown    \
    halt        \
    news        \
    uucp        \
    operator    \
    games       \
    gopher      \
    ; do
    grep -q "${item}" /etc/passwd &&  {
        echo        erase ${item}
        userdel     ${item}
    }
done
