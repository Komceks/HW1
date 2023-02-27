#!/bin/sh
# Simple RNA-seq script
# Performs FASTQC, mapping, quantification

#git repository comms
git clone https://github.com/Komceks/HW1.git
git pull
git push

#Download .SRA files
prefetch SRR8985047 SRR8985048 SRR8985051 SRR8985052

#Convert to FASTQ files
fastq-dump --gzip SRR8985047 SRR8985048 SRR8985051 SRR8985052
