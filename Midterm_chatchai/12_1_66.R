data2 <- as.numeric(data$Weight[data$Gender == "Female"])
xbar = mean(data2)
mu0 = 52.5 
sigma = 10.18
n = 32 
z = (xbar-mu0)/(sigma/sqrt(n))

alpha = .05
z.half.alpha = qnorm(1-alpha/2)
critical = c(-z.half.alpha,z.half.alpha) # Cri

sprintf("computed Z value : %.2f",z)
sprintf("critical Z value : %.2f",critical)

pval = pnorm(z)