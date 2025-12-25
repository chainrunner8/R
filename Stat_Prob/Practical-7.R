X = c(0,3,3,4,2,0,1,4,0,4)
loglik.fun = function(lambda) sum(dpois(X, lambda=lambda, log=TRUE))
step = 0.0001
lambda = seq(0,4,by=step)
loglik = sapply(lambda, loglik.fun)
score = diff(loglik)/step
fisherInfo = -diff(score)/step
#plot(lambda, loglik, type='l', col='blue')
#lines(lambda, score, type='l', col='green')
plot(lambda[-c(1, length(lambda))], fisherInfo, type='l', col='red', ylim=c(0,200))
