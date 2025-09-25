setwd("C:\\Users\\IT23329560\\Desktop\\IT23329560\\Lab 08-20250925")
getwd()

#1 - Calculate the population mean and population standard deviation of the laptop bag weights.
data <- read.table("Exercise - LaptopsWeights.txt", header=TRUE)
colnames(data) <- c("Weight")


pop_mean <- mean(data$Weight)
pop_sd   <- sd(data$Weight)

pop_mean
pop_sd


#2 - Draw 25 random samples of size 6 (with replacement) and calculate the sample mean and sample standard deviation for each sample.

samples <- c()
n <- c()

for(i in 1:25){
  S <- sample(data$Weight, 6, replace=TRUE)
  samples <- cbind(samples, S)
  n <- c(n, paste('Sample', i))
}

colnames(samples) <- n

s.means <- apply(samples, 2, mean)
s.sds   <- apply(samples, 2, sd)

results <- data.frame(
  Sample = 1:25,
  Mean = s.means,
  SD = s.sds
)

results


#3 - Calculate the mean and standard deviation of the 25 sample means and state the-
#relationship of them with true mean and true standard deviation. 

mean_of_sample_means <- mean(s.means)
sd_of_sample_means   <- sd(s.means)

mean_of_sample_means
sd_of_sample_means

theoretical_sd <- pop_sd / sqrt(6)
theoretical_sd




