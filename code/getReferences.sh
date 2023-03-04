#!/bin/sh
#Mus Musculus mm9 https://www.ncbi.nlm.nih.gov/data-hub/genome/GCF_000001635.18/

#Download Genome reference FASTA
curl -OJX GET "https://ftp.ensembl.org/pub/release-109/fasta/mus_musculus/dna/Mus_musculus.GRCm39.dna.toplevel.fa.gz"
gzip -d Mus_musculus.GRCm39.dna.toplevel.fa.gz
#Download transcriptome reference FASTA.gz
wget https://ftp.ensembl.org/pub/release-109/fasta/mus_musculus/cdna/Mus_musculus.GRCm39.cdna.all.fa.gz
gzip -d Mus_musculus.GRCm39.cdna.all.fa.gz
#download gtf file
wget "https://ftp.ensembl.org/pub/release-109/gtf/mus_musculus/Mus_musculus.GRCm39.109.gtf.gz"
gzip -d Mus_musculus.GRCm39.109.gtf.gz

#Download .SRA files
prefetch SRR8985047 SRR8985048 SRR8985051 SRR8985052

#Convert to FASTQ files
fastq-dump --gzip SRR8985047 SRR8985048 SRR8985051 SRR8985052
