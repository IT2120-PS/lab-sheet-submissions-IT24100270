setwd("C://Users//it24100270//Desktop//IT24100270")
data <- read.table("Exercise - LaptopsWeights.txt", header = TRUE)

#Example laptop bag weights
bag_weights <- c(1.2, 1.4, 1.5, 1.3, 1.6, 1.7, 1.3, 1.4, 1.5, 1.6, 1.5, 1.8)

# Calculate population mean
pop_mean <- mean(bag_weights)
cat("Population Mean:", pop_mean, "\n")

# Calculate population standard deviation correctly
pop_sd <- sqrt(sum((bag_weights - pop_mean)^2) / length(bag_weights))
cat("Population Standard Deviation:", pop_sd, "\n")

# Number of samples and sample size
num_samples <- 25
sample_size <- 6

# Initialize vectors
sample_means <- numeric(num_samples)
sample_sds <- numeric(num_samples)

set.seed(123)  # reproducibility

for (i in 1:num_samples) {
  sample_data <- sample(bag_weights, size = sample_size, replace = TRUE)
  sample_means[i] <- mean(sample_data)
  sample_sds[i] <- sd(sample_data)
}

cat("Sample Means:", sample_means, "\n")
cat("Sample Standard Deviations:", sample_sds, "\n")

mean_sample_means <- mean(sample_means)
sd_sample_means <- sd(sample_means)

cat("Mean of Sample Means:", mean_sample_means, "\n")
cat("Standard Deviation of Sample Means:", sd_sample_means, "\n")

cat("The mean of the sample means should be approximately equal to the population mean, and the standard deviation of the sample means should be approximately equal to the population standard deviation divided by the square root of the sample size (central limit theorem).\n")
