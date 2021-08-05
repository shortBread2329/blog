#!/bin/bash
TODAY="`date +%Y%m%d`"
NEWDIR=$TODAY
# ディレクトリが存在するか
if [ -d ./content/post/$TODAY/ ]; then
    for i in {1..9} ; do
        NEWDIR="${TODAY}_${i}"
        if [ ! -d ./content/post/$NEWDIR/ ]; then
            break
        fi
    done
fi
hugo new "post/$NEWDIR/index.md"
start ./content/post/$NEWDIR/index.md