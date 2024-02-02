#!/bin/bash

# one time step - create BLAST database made from your reference genome using command: makeblastdb -in reference_genome.fa -dbtype nucl -out reference_genome_db

# Align sgRNA sequences to the reference genome using BLAST
# Output will be in tabular format

blastn -query sgRNAs.fasta \
       -db reference_genome_db \
       -out sgRNAs_blast_results.txt \
       -outfmt 6 \
       -max_target_seqs 1 \
       -num_threads 4
