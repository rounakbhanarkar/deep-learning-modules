#!usr/bin/bash

cp embed.sh /home/rounak/laser/tasks/embed/EH_1/
cp raw.sh /home/rounak/laser/tasks/embed/EH_1/
cp LaserScore.py /home/rounak/laser/tasks/embed/EH_1/

cd /home/rounak/laser/tasks/embed/EH_1/
export LASER="${HOME}/laser"

echo "generating raw files..."
printf "\n"
sh raw.sh
echo "raw files generated."
printf "\n"

echo "Printing statements.."
printf "\n"
cat E1
printf "\n"
cat H1
printf "\n"
cat H2
printf "\n"
cat H3
printf "\n"
cat H4
printf "\n"
cat H5
printf "\n"
cat H6
printf "\n"
cat H7
printf "\n"
cat H8
printf "\n"
cat H9
printf "\n"
echo "Laser scores are as follows.."
python LaserScore.py

