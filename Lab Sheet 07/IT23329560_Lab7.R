setwd("C:\\Users\\User\\Desktop\\IT23329560")

#Question 1
## 1) Uniform(0, 40) minutes: P(10 ≤ X ≤ 25)
p1 <- punif(25, min = 0, max = 40) - punif(10, min = 0, max = 40)
p1


#Question 2
#Exponential rate λ = 1/3 per hour: P(t ≤ 2)
p2 <- pexp(q = 2, rate = 1/3)
p2


#Question 3
#Normal(μ = 100, σ = 15)
#part (i) P(X > 130)
p3_i <- 1 - pnorm(130, mean = 100, sd = 15)
p3_i


#part(ii) 95th percentile
q3_ii <- qnorm(0.95, mean = 100, sd = 15)
q3_ii
