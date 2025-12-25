k=10000
ave=var=numeric(k)
for (i in 1:k){
  x=rpois(n=20,lambda=1)  # data
  ave[i]=mean(x)          # sample average
  var[i]=var(x)          # sample variance
}
par(mfrow=c(2,1))
hist(ave,100,xlim=c(0,5))
hist(var,100,xlim=c(0,5))


# 2.1.0.4

ave=med=numeric(k)
mse_ave=mse_med=numeric(k)
for (i in 1:k){
  x=rnorm(n=50, mean=3, sd=2)
  ave[i]=mean(x)
  med[i]=median(x)
}
par(mfrow=c(2,1))
hist(ave,100, xlim=c(0,5))
hist(med,100, xlim=c(0,5))
mse_ave=mean((ave-3)^2)
mse_med=mean((med-3)^2)
cat('mean_ave', mean(ave));cat('mean_med', mean(med))
cat('mse_ave', mse_ave);cat('mse_med', mse_med)


# 2.2.0.1 & 2

sig2=numeric(k)
for (i in 1:k){
  x=rnorm(n=6, mean=0, sd=2)
  sig2[i]=sum((x-mean(x))^2)/5
}
mean(sig2)

# 2.2.0.3
# weights should be 1/n ?

# 2.2.0.4

T1=T2=numeric(k)
for (i in 1:k){
  x=sample(5000, 10)
  T1[i]=2*mean(x)-1
  T2[i]=11*max(x)/10 - 1

}
par(mfrow=c(2,1))
hist(T1,100, xlim=c(2000,8000))
hist(T2,100, xlim=c(2000,8000))
cat('T1 mean:', mean(T1), 'T2 mean:', mean(T2))
cat('T1 mse:', mean((T1-5000)^2), 'T2 mse:', mean((T2-5000)^2))


T1=T2=numeric(k)
for (i in 1:k){
  
}