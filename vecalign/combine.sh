#!/bin/bash
export LASER="${HOME}/laser"

#for generation of overlap file
printf "Generation of overlaps file\n"
./overlap.py -i bleualign_data/e bleualign_data/test.e -o bleualign_data/overlaps.e -n 10
./overlap.py -i bleualign_data/h bleualign_data/test.h -o bleualign_data/overlaps.h -n 10

cd /home/rounak/vecalign/bleualign_data/

#for generation of embedding file
printf "Generation of embedding file\n"
./embed.sh overlaps.e en overlaps_e.emb
./embed.sh overlaps.h en overlaps_h.emb

cd /home/rounak/vecalign/
./vecalign.py --alignment_max_size 8 --src bleualign_data/e --tgt bleualign_data/h --src_embed bleualign_data/overlaps.e bleualign_data/overlaps_e.emb --tgt_embed bleualign_data/overlaps.h bleualign_data/overlaps_h.emb > vc_output
