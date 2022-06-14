#!/usr/bin/bash
LINESIZE=132
for file in $*
do 
MAXLEN=$( wc -L $file | cut -d ' ' -f 1 )
if [[ $MAXLEN -gt $LINESIZE ]]
then 
echo "$file: the maximum line size is $MAXLEN, over $LINESIZE."
else 
echo "$file: the maximum line size is $MAXLEN, not over $LINESIZE."
fi
done
