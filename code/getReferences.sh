#!/bin/sh
#Mus Musculus mm9 https://www.ncbi.nlm.nih.gov/data-hub/genome/GCF_000001635.18/

#Download Genome reference FASTA
wget "https://ftp.ensembl.org/pub/release-67/fasta/mus_musculus/dna/Mus_musculus.NCBIM37.67.dna.toplevel.fa.gz" -P ~/HW1/references/
gzip -d ~/HW1/references/Mus_musculus.NCBIM37.67.dna.toplevel.fa.gz
#Download transcriptome reference FASTA.gz
wget "https://ftp.ensembl.org/pub/release-67/fasta/mus_musculus/cdna/Mus_musculus.NCBIM37.67.cdna.all.fa.gz" -P ~/HW1/references/
gzip -d ~/HW1/references/Mus_musculus.NCBIM37.67.cdna.all.fa.gz
#download gtf file
wget "https://ftp.ensembl.org/pub/release-67/gtf/mus_musculus/Mus_musculus.NCBIM37.67.gtf.gz" -P ~/HW1/references/
gzip -d ~/HW1/references/Mus_musculus.NCBIM37.67.gtf.gz

#download samples fastq
wget https://sra-pub-src-2.s3.amazonaws.com/SRR8985047/39_WT_R1.fastq.gz
mv 39_WT_R1.fastq.gz SRR8985047_1.fastq.gz
wget https://sra-pub-src-2.s3.amazonaws.com/SRR8985047/39_WT_R2.fastq.gz
mv 39_WT_R2.fastq.gz SRR8985047_2.fastq.gz
wget https://sra-pub-src-2.s3.amazonaws.com/SRR8985048/41_WT_R1.fastq.gz
mv 41_WT_R1.fastq.gz SRR8985048_1.fastq.gz
wget https://sra-pub-src-2.s3.amazonaws.com/SRR8985048/41_WT_R2.fastq.gz
mv 41_WT_R2.fastq.gz SRR8985048_2.fastq.gz
wget https://sra-pub-src-2.s3.amazonaws.com/SRR8985051/47_Homo_R1.fastq.gz
mv 47_Homo_R1.fastq.gz SRR8985051_1.fastq.gz
wget https://sra-pub-src-2.s3.amazonaws.com/SRR8985051/47_Homo_R2.fastq.gz
mv 47_Homo_R2.fastq.gz SRR8985051_2.fastq.gz
wget https://sra-pub-src-2.s3.amazonaws.com/SRR8985052/49_Homo_R1.fastq.gz
mv 49_Homo_R1.fastq.gz SRR8985052_1.fastq.gz
wget https://sra-pub-src-2.s3.amazonaws.com/SRR8985052/49_Homo_R2.fastq.gz
mv 49_Homo_R2.fastq.gz SRR8985052_2.fastq.gz