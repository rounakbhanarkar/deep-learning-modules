#!usr/bin/bash

sed -i 's/\t/\n/g' en-hi_1 
i=1
while read Line
do
echo "$Line" > E$i
i=$((i+1))
done < en-hi_1

mv E2 H1
mv E3 H2
mv E4 H3
mv E5 H4
mv E6 H5
mv E7 H6
mv E8 H7
mv E9 H8
mv E10 H9





