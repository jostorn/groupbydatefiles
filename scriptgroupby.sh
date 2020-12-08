#!/bin/bash

#funcionament ./scriptgroupby origen desti


dir=$1
arrel=$(readlink -f $2)

cd "$dir"

for x in *; do
    if [ -f "$x" ]; then
        d=$(date -r "$x" +%Y/%m/%d)
        mkdir -pv "$arrel/$d"
        mv -v -- "$x" "$arrel/$d/"
    fi
done




