#!/usr/bin/bash
for file in $*
do
NONPRINT=$( cat $file | grep [^[:print:]] | sed '/\o14/d' )
if [[ $NONPRINT = "" ]]
then 
echo "$file: there are no non-printable characters."
else 
echo "$file: there are non-printable characters, $NONPRINTABLE."
fi 
done
