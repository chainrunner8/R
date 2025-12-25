
# 8.1.0.2

dbinom(240,250,0.5)
# 1.210475e-58
dbinom(125,250,0.5)
# 0.05041221

#
p=1/2
n=100
Tstats = replicate(1e4, {
  X=rbinom(n=n, size=1, prob=p)
  p_hat = mean(X)
  T_stat = abs(p_hat - p)
})
hist(Tstats)
crit = quantile(Tstats, 0.95)

# Power function
p_alt = 0.8
Tstats_alt = replicate(1e4, {
  X = rbinom(n=n, size=1, prob=p_alt)
  p_hat = mean(X)
  T_stat = abs(p_hat-p)  # still p because
})
hist(Tstats_alt)
crit = quantile(Tstats_alt, 0.95) + 1/n
mean(Tstats_alt >= crit)
# distribution of T statistic under the assumption of p_alt = 0.7

# what is the probability of rejecting H0 with this sample of X's ?
# in other words, what is P(T_stat > crit) ?
# how is crit defined?
#   


Tstats_true = replicate(1e4, {
  X = rbinom(n=n, size=1, prob=p)
  p_hat = mean(X)
  Tstat = abs(p_hat-p)  # still p because
})

n=250
p=1/2

alpha = 0.05
crit = qbinom(p=1-alpha/2, size=100, prob=p)/100 - p

p_alts = 0:100/100
powers = numeric(length(p_alts))
for(i in seq_along(p_alts)) {
  Tstats_alt = replicate(1e4, {
    X = rbinom(n=100, size=1, prob=p_alts[i])
    p_hat = mean(X)
    Tstat = abs(p_hat-p)  # still p because
  })
  powers[i] = mean(Tstats_alt >= crit)
}
plot(p_alts, powers, type='l')
abline(h=0.05)

# repeat 1e4 times:
# sample n obs from Binom(n, p_alt)
# calculate the P(success) = p_hat
# Tstat = abs(p_hat - p)
# power = P_palt(reject H0) = P_palt(Tstat >= crit)

# 8.3.0.2
p = 0.51
x = rbinom(10^6, size=250, p=0.51)
T_stat = abs(x-125)
mean(T_stat>15)

p=0.7
x = rbinom(10^6, size=250, p=p)
T_stat = abs(x-125)
mean(T_stat>15)

 # do you even understand what we're trying to do here?
# Power = the % chance of wrongly rejecting H0.

# 8.3.0.3
p_alts = 0:100/100
powers = 1 - pbinom(138, 250, p_alts)
lines(p_alts, powers, type='l', col='red')

# solution:
p=seq(0,1,0.01)
power=pbinom(109,250,p)+1-pbinom(140,250,p)
plot(p,power,ylab='power = probability to reject H0',type='l',ylim=c(0,1))
abline(0.05,0)

power=1-pbinom(138,250,p)  # power of the one-sided test
lines(p,power,col='red')

