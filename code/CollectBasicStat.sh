#!/bin/sh

#Prints the number of sequences in reference genome
grep -c ">" Mus_musculus.GRCm39.dna.toplevel.fa

#Calculates and prints the number of reads in each sample

#46388681 reads
echo $(cat SRR8985047.fastq|wc -l)/4|bc
#40881658 reads
echo $(cat SRR8985048.fastq|wc -l)/4|bc
#44958444 reads
echo $(cat SRR8985051.fastq|wc -l)/4|bc
#49424572 reads
echo $(cat SRR8985052.fastq|wc -l)/4|bc
#Calculates protein-coding genes
cat Mus_musculus.GRCm39.109.gtf | awk '{if ($3=="transcript") print}' |wc -l
