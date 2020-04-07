#!usr/bin/bash

i=1
while read Line
do
mkdir EH_$i
echo "$Line" > en-hi_$i
mv en-hi_$i EH_$i
i=$((i+1))
done < testfile
