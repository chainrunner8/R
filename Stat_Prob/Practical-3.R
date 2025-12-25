x=rnorm(10^5,mean=2,sd=1)
mean(exp(x))
cat('theory:', exp(2+1/2))

x = rpois(1e5, lambda=2)
mean(x)

set.seed(123)
x=rnorm(n=50,mean=10,sd=5)
xbar=mean(x)
k=1e4
B=numeric(k)
for (i in 1:k){
  x.boot=rnorm(n=50,mean=xbar,sd=5)
  xbar.boot=mean(x.boot)
  B[i]=xbar.boot-xbar
}
mean(B)
mean(B^2)
var(B)

# non parametric bootstrap: careful with the dependence structure in the data

# 3.2.0.3

set.seed(123)
x=rnorm(n=50,mean=10,sd=5)
xbar=mean(x)
sig=sd(x)
B_mu=B_sig=numeric(k)
for (i in 1:k){
  x.boot=rnorm(n=50,mean=xbar,sd=sig)
  xbar.boot=mean(x.boot)
  sig.boot=sd(x.boot)
  B_mu[i]=xbar.boot-xbar
  B_sig[i]=sig.boot-sig
}
cat('mean B_mu: ', mean(B_mu), ' ; ', 'mean B_sig: ', mean(B_sig))

# bootstrapped variance of xbar is the variance of B, why?

# 3.2.0.4

set.seed(123)
x=rnorm(n=50,mean=10,sd=5)
xbar=mean(x)
sig=sd(x)
B_sig=numeric(k)
for (i in 1:k){
  x.boot=rnorm(n=50,mean=xbar,sd=sig)
  sig.boot=sd(x.boot)
  B_sig[i]=sig.boot-sig
}
cat('mean bias: ', mean(B_sig), ' ; '
    , 'bootstrapped variance of sig hat: ', var(B_sig), ' ; '
    , 'MSE of sig hat: ', mean(B_sig^2))

# 3.2.0.5

