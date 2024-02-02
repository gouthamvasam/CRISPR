# R script to combine scores and select sgRNAs

# Import on-target and off-target scores into R
on_target_scores <- read.csv("onTargetScores.csv")
off_target_scores <- read.csv("offTargetScores.csv")

# Assuming both CSV files have the columns 'sgRNA' and 'score'
# and that the 'score' columns represent the on-target and off-target scores respectively.

# Combine the scores in R
# The 'by' argument in merge() specifies the column name that is common to both data frames.
combined_scores <- merge(on_target_scores, off_target_scores, by = "sgRNA")

# Calculate a combined score
# This is an example calculation; you may need a different formula depending on your scoring system.
combined_scores$combined_score <- combined_scores$score.x - combined_scores$score.y

# Select the best sgRNAs based on combined scores
# Define your threshold based on your scoring system
threshold <- 0.5
selected_sgRNAs <- combined_scores[combined_scores$combined_score > threshold, ]

# Export the selected sgRNAs for further use
write.csv(selected_sgRNAs, "selected_sgRNAs.csv", row.names = FALSE)
