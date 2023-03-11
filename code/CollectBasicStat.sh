#!/bin/sh

#Prints the number of sequences in reference genome
grep -c ">" ~/HW1/references/Mus_musculus.NCBIM37.67.dna.toplevel.fa

#Calculates and prints the number of reads in each sample

#46388681 reads
echo $(zcat ~/HW1/inputs/SRR8985047_1.fastq.gz|wc -l)/4|bc
#40881658 reads
echo $(zcat ~/HW1/inputs/SRR8985048_1.fastq.gz|wc -l)/4|bc
#44958444 reads
echo $(zcat ~/HW1/inputs/SRR8985051_1.fastq.gz|wc -l)/4|bc
#49424572 reads
echo $(zcat ~/HW1/inputs/SRR8985052_1.fastq.gz|wc -l)/4|bc


#Calculates protein-coding genes
cat ~/HW1/references/Mus_musculus.NCBIM37.67.gtf | grep -F 'gene' | grep -c 'gene_biotype "protein_coding"'
