#!/bin/sh

#Prints the number of sequences in reference genome
grep -c ">" genome_assemblies_genome_fasta.tar

#Calculates and prints the number of reads in each sample

#46388681 reads
echo $(cat SRR8985047.fastq|wc -l)/4|bc
#40881658 reads
echo $(cat SRR8985048.fastq|wc -l)/4|bc
#44958444 reads
echo $(cat SRR8985051.fastq|wc -l)/4|bc
#49424572 reads
echo $(cat SRR8985052.fastq|wc -l)/4|bc
#Average reads 45413338
echo "(46388681+40881658+44958444+49424572)/4" | bc

cat genome_assemblies_genome_gtf.tar | grep -v '^#' | cut -f3 | sort | uniq -c