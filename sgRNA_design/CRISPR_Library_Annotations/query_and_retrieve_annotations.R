#Script for R Interface to Query and Retrieve Annotations
# Load required libraries
library(AnnotationDbi)
library(org.Hs.eg.db) # Example for human annotations, replace with the relevant organism package
library(GenomicRanges)

# Define a function to retrieve annotations for a given set of gene identifiers
retrieve_annotations <- function(gene_ids) {
  # Retrieve gene annotations from the org.*.eg.db package
  annotations <- select(org.Hs.eg.db, keys = gene_ids, columns = c("SYMBOL", "GENENAME", "CHR", "START", "END", "STRAND"), keytype = "ENTREZID")
  return(annotations)
}

# Example usage:
# Suppose you have a vector of Entrez gene IDs for which you want to retrieve annotations
gene_ids <- c("673", "675", "677") # Replace with your actual gene IDs
annotations <- retrieve_annotations(gene_ids)

# Print the retrieved annotations
print(annotations)
