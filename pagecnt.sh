#!/usr/bin/ksh
PAGE_COUNT=0
for file in $*; do
NUMPAGE=$( head -1 $file | sed 's/.*[[:space:]]/ /')
PAGE_COUNT=$(awk -v page_count="$PAGE_COUNT" -v numpage="$NUMPAGE" \
'BEGIN {print (page_count+numpage)}')
done
echo "The total number of pages is $PAGE_COUNT"
