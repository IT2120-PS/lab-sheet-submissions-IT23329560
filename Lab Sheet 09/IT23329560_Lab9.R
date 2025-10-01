getwd()
setwd("C:\\Users\\User\\Desktop\\IT23329560")

#1. Assume that the time taken to bake a batch of cookies is normally distributed with mean 45 minutes and standard deviation 2 minutes.

#i. Generate a random sample of size 25 for the baking time.
set.seed(123)
baking_times <- rnorm (25, mean = 45, sd =2)
baking_times

#ii. Test whether the average baking time is less than 46 minutes at a 5% level of significance.
t.test (baking_times, 
        mu = 46, 
        alternative = "less",
        conf.level = 0.95)