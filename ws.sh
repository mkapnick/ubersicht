#!/usr/bin/env bash

exists () {
    type "$1" &> /dev/null ;
}

ws () {
if exists /usr/local/bin/chunkc ; then
     /usr/local/bin/chunkc tiling::query --desktop id
else
   	echo "1"
fi
}

if [ "$(ws)" = "1" ] ; then
	echo "1"
else
	ws
fi
