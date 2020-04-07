#!usr/bin/bash

echo "SEPARATING CHUNKS OF ENG-HIN.."
sh new_chunk.sh

cp EH_sep.sh /home/rounak/laser/tasks/embed/EH_1/
cp EH_sep.sh /home/rounak/laser/tasks/embed/EH_2/
cp EH_sep.sh /home/rounak/laser/tasks/embed/EH_3/
cp EH_sep.sh /home/rounak/laser/tasks/embed/EH_4/
cp EH_sep.sh /home/rounak/laser/tasks/embed/EH_5/
cp EH_sep.sh /home/rounak/laser/tasks/embed/EH_6/

cd /home/rounak/laser/tasks/embed/EH_1/
sh EH_sep.sh
cd ..

cd /home/rounak/laser/tasks/embed/EH_2/
mv en-hi_2 en-hi_1
sh EH_sep.sh
cd ..

cd /home/rounak/laser/tasks/embed/EH_3/
mv en-hi_3 en-hi_1
sh EH_sep.sh
cd ..

cd /home/rounak/laser/tasks/embed/EH_4/
mv en-hi_4 en-hi_1
sh EH_sep.sh
cd ..

cd /home/rounak/laser/tasks/embed/EH_5/
mv en-hi_5 en-hi_1
sh EH_sep.sh
cd ..

cd /home/rounak/laser/tasks/embed/EH_6/
mv en-hi_6 en-hi_1
sh EH_sep.sh
cd ..
