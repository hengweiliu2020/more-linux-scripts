#!/usr/bin/bash
LINESIZE=132
for file in $*
do 
MAXLEN=$( cat $file | sed '/\o14/d' | awk '{print length}' | sort -n | tail -1 )
if [[ $MAXLEN -gt $LINESIZE ]]
then 
echo "$file: the maximum line size is $MAXLEN, over $LINESIZE."
else 
echo "$file: the maximum line size is $MAXLEN, not over $LINESIZE."
fi
done
