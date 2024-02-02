#!/bin/bash

# one time step - build a Bowtie index for your reference genome using command: bowtie-build reference_genome.fa reference_genome_index

# Align sgRNA sequences to the reference genome using Bowtie
# Output will be in SAM format

bowtie -f -v 2 -k 1 -m 1 --best --strata \
       reference_genome_index \
       sgRNAs.fasta \
       sgRNAs_aligned.sam
