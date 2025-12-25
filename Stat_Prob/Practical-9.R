X = c(1,1,1,1,0,0,1,0,1,0,1,1,1,1,0,0,0)
n = length(X)
p0 = 0.1
Tstat = abs(mean(X) - p0)
Tstats = replicate(1e4, {
  sampleX = rbinom(n, size=1, prob=p0)
  sampleTstat = abs(mean(sampleX) - p0)
})
crit = quantile(Tstats, probs=0.95) - 1/n
hist(Tstats)
reject = Tstat >= crit
reject