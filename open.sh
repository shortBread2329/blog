#!/bin/bash
for ((j=0; j<2; j++)); do
    TODAY=`date +%Y%m%d --date '${j} day ago'`
    NEWDIR=$TODAY
    # ディレクトリが存在するか
    for ((i=9; i>=0; i--)); do
        NEWDIR="${TODAY}_${i}"
        if [ -d ./content/post/$NEWDIR/ ]; then
            start ./content/post/$NEWDIR/index.md
            exit 0
        fi
    done
    if [ $NEWDIR ==  "${TODAY}_0" ]; then
        NEWDIR=$TODAY
        if [ -d ./content/post/$NEWDIR/ ]; then
            start ./content/post/$NEWDIR/index.md
            exit 0
        fi
    fi
done
exit 1