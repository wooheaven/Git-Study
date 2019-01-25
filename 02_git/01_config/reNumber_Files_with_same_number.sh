#! /bin/bash

ls -l \
| grep "^-" \
| awk 'BEGIN{FS=OFS=" "} {if(NF > 8) print $9; next}' \
| grep -v "reNumber_Files_with_same_number.sh" \
| grep -v "git-move.sh" \
| cat -n \
| sed -e 's/ //g' \
| awk 'BEGIN{FS=OFS="\t"} {if(length($1) < 2) print 0$1,$2 ;else print $0}' \
| awk 'BEGIN{FS=OFS="\t"} {if($1 == substr($2,0,3)) NEXT; else print $0}' \
| awk 'BEGIN{FS="\t"; OFS=" "} {print "git mv", $2, $1"_"substr($2, 4) }' \
> git-move.sh

chmod +x git-move.sh
