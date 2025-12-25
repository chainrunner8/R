# 11.1.0.4 Exercise

X = c(0,3,3,4,2,0,1,4,0,4)
sd(X)/sqrt(length(X))

lambda_hat = mean(X)
step=0.001

lambda_grid = lambda_hat + c(-step, 0, step)
loglik_fun = function(lambda) sum(dpois(X, lambda=lambda, log=TRUE))
loglik = sapply(lambda_grid, loglik_fun)
score = diff(loglik)/step
obs_FisherInfo = -diff(score)/step

observed_statistic = lambda_hat - 2

qnorm(0.975) / sqrt(obs_FisherInfo)

# we don't reject.

