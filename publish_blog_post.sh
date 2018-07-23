#!/usr/bin/env bash
set -ex
DATE=`date +%Y/%m/%d`
NAME=`echo $1 | sed "s/^ready_to_publish\///"`
mkdir -p published/${DATE} && mv $1 published/${DATE}/
git add $1 published/${DATE}/${NAME}
git commit -m "Publishing new blog post published/$DATE/$NAME"
