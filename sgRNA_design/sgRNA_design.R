# R script to design sgRNAs
library(CRISPRseek)
library(Biostrings)
library(BSgenome.Hsapiens.UCSC.hg38)

# Define your target sequence and parameters
target_sequence <- DNAString("YOUR_TARGET_DNA_SEQUENCE") # Replace with your sequence
pam_pattern <- "NGG"

# Identify sgRNAs in the target sequence
sgRNAs <- CRISPRseek::designGuideRNAs(inputSequence = target_sequence, 
                                      pam = pam_pattern)

# Save the sgRNA sequences to a file for use in Python and Bash scripts
write.table(sgRNAs$guideRNAs, "sgRNAs.txt", quote = FALSE, row.names = FALSE, col.names = FALSE)
