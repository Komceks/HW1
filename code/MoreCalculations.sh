#!/bin/sh

#Average reads 45413338
echo "(46388681+40881658+44958444+49424572)/4" | bc

#Calculates chromosomes
cat Mus_musculus.GRCm39.109.gtf | grep -v '^#' | cut -f1 | sort -n | uniq | grep -v '.1$' |wc -l

