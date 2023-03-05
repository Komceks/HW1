#!/bin/sh
#Mus Musculus mm9 https://www.ncbi.nlm.nih.gov/data-hub/genome/GCF_000001635.18/

#Download Genome reference FASTA
wget "https://ftp.ensembl.org/pub/release-67/fasta/mus_musculus/dna/Mus_musculus.NCBIM37.67.dna.toplevel.fa.gz"
gzip -d Mus_musculus.NCBIM37.67.dna.toplevel.fa.gz
#Download transcriptome reference FASTA.gz
wget "https://ftp.ensembl.org/pub/release-67/fasta/mus_musculus/cdna/Mus_musculus.NCBIM37.67.cdna.all.fa.gz"
gzip -d Mus_musculus.NCBIM37.67.cdna.all.fa.gz
#download gtf file
wget "https://ftp.ensembl.org/pub/release-67/gtf/mus_musculus/Mus_musculus.NCBIM37.67.gtf.gz"
gzip -d Mus_musculus.NCBIM37.67.gtf.gz

#Download .SRA files
prefetch SRR8985047 SRR8985048 SRR8985051 SRR8985052

#Convert to FASTQ files
fastq-dump --gzip SRR8985047 SRR8985048 SRR8985051 SRR8985052
