p=seq(0,1,0.001)
lik=dbinom(15,20,p)
plot(p, lik, type='l')

idx = which.max(lik)
cat('MLE: ', p[idx])

loglik=dbinom(15,20,p,log=TRUE)
plot(p, loglik, type='l')

idx=which.max(loglik)
cat('MLE: ', p[idx])

# 4.2.0.1
x = c(3, 0, 2, 1, 3, 2, 1, 0, 2, 1)
# method of moments:
p_x_0 = sum(x==0)/length(x)
p_x_1 = sum(x==1)/length(x)
p_x_2 = sum(x==2)/length(x)
p_x_3 = sum(x==3)/length(x)
# E(X) = θ/3 + 4(1-θ)/3 + 1 - θ = θ(1/3 - 4/3 - 1) + 4/3 + 1
# = -2θ + 7/3
# θ = -(mean(x) - 7/3)/2

# ln L = (2θ/3)²(θ/3)^3(2(1-θ)/3)^3((1-θ)/3)²
L = (2*p/3)^2 * (p/3)^3 * (2*(1-p)/3)^3 * ((1-p)/3)^2
lnL = log(L)
plot(p, lnL, type='l')
