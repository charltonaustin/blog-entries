set -ex
DATE=`date +%Y/%m/%d`
NAME=`echo $1 | sed "s/^unpublished\///"`
mkdir -p published/$DATE && mv $1 published/$DATE/
git add $1 published/$DATE/$NAME
git commit -m "Pubslishing new blog post published/$DATE/$NAME"
