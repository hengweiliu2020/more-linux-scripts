#!/usr/bin/ksh
trap "rm -f toc_temp*" EXIT
PS=52
for filename in $*; do
print $( head -${PS} $filename | grep "Table [0-9]" ) >> toc_temp1
done
awk '{print $2}' toc_temp1 | awk -F '.' '{printf "%02i%02i\n", $1, $2}' > toc_temp2
paste -d ' ' toc_temp2 toc_temp1 > toc_temp3
sort toc_temp3 | sed 's/^[0-9]*/ /' > toc_final
