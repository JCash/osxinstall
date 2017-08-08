#/usr/bin/env bash

DOWNLOADS=~/Downloads
MOUNTPOINT=~/tmpMount

function download {
    local url=$1
    local filename=`basename $url`
    local target=$DOWNLOADS/$filename
    if [ ! -e "$target" ]
    then
        wget $url -O $target
    else
        echo $target already exists
    fi

}

download http://builds.phere.net/GitX/development/GitX-dev.dmg

hdiutil attach -mountpoint $MOUNTPOINT $DOWNLOADS/GitX-dev.dmg
cp -r $MOUNTPOINT/GitX.app /Applications/
hdiutil detach $MOUNTPOINT
