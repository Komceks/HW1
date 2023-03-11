#!/bin/sh

#Average reads 45413338
echo "(46388681+40881658+44958444+49424572)/4" | bc

#Calculates chromosomes
cat ~/HW1/references/Mus_musculus.NCBIM37.67.gtf | grep -v '^#' | cut -f1 | sort -n | uniq | wc -l


