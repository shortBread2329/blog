#!/bin/bash
TODAY="`date +%Y%m%d`"
NEWDIR=$TODAY
# ディレクトリが存在するか
for ((i=9; i>=0; i--)); do
    NEWDIR="${TODAY}_${i}"
    if [ -d ./content/post/$NEWDIR/ ]; then
        break
    fi
done
if [ $NEWDIR ==  "${TODAY}_0" ]; then
    NEWDIR=$TODAY
fi
start ./content/post/$NEWDIR/index.md