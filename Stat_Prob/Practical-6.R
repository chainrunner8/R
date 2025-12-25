x=rnorm(100,2,1)
xbar=cumsum(x)/(1:100)
plot(1:100,xbar,type='l')
abline(h=2)

# 6.1.0.2
u1 = runif(10^5)
hist(u1, 100)
u2=u1+runif(10^5)
hist(u2, 100)
u3=u2+runif(10^5)
hist(u3, 100)
u4=u3+runif(10^5)
hist(u4, 100)
u5=u4+runif(10^5)
hist(u5, 100)
u6=u5+runif(10^5)
hist(u6, 100)

# 6.1.0.3
u1 = rexp(10^5)
hist(u1, 100)
u2 = u1+rexp(10^5)
hist(u2, 100)
u3 = u2+rexp(10^5)
hist(u3, 100)
u4 = u3+rexp(10^5)
hist(u4, 100)
u5 = u4+rexp(10^5)
hist(u5, 100)
u6 = u5+rexp(10^5)
hist(u6, 100)
u7 = u6+rexp(10^5)
hist(u7, 100)
u8 = u7+rexp(10^5)
hist(u8, 100)
u9 = u8+rexp(10^5)
hist(u9, 100)
u10 = u9+rexp(10^5)
hist(u10, 100)

# 6.2
X = rnorm(12,mean=2,sd=1)
loglik.fun = function(mu) sum(log(dnorm(X, mean=mu, sd=1)))
mu=seq(0,4,by=0.01)
loglik = sapply(mu, loglik.fun)
plot(mu, loglik, type='l')

# 6.2.0.3
n=5
sd=1
X = rnorm(n=n, mean=0, sd=sd)
loglik.fun = function(mu) sum(log(dnorm(X, mean=mu, sd=sd)))
mu = seq(-10,10,by=0.01)
loglik = sapply(mu,loglik.fun)
plot(mu, loglik, main='n=5', type='l', xlim=c(-10,10),ylim=c(-200,10))

n=10
X = rnorm(n=n, mean=0, sd=sd)
loglik = sapply(mu,loglik.fun)
plot(mu, loglik, main='n=10', type='l', xlim=c(-10,10),ylim=c(-200,10))

n=20
X = rnorm(n=n, mean=0, sd=sd)
loglik = sapply(mu,loglik.fun)
plot(mu, loglik, main='n=20', type='l', xlim=c(-10,10),ylim=c(-200,10))

n=100
X = rnorm(n=n, mean=0, sd=sd)
loglik = sapply(mu,loglik.fun)
plot(mu, loglik, main='n=100', type='l', xlim=c(-10,10),ylim=c(-200,10))



