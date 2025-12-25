getwd()
setwd('Leiden/GLM/Practical-10')

ova = read.csv('ova.csv')

(tab = xtabs(~figo+death, data=ova))
(proptab = proportions(tab, 'figo'))
(chi2test = chisq.test(tab))

(OR = (proptab[2,2]/proptab[2,1])/(proptab[1,2]/proptab[1,1]))

model.lr1 = glm(death~figo, family=binomial, data=ova)
summary(model.lr1)

beta_figo = coef(summary(model.lr1))[2,1]
exp(beta_figo)
coefs = coef(summary(model.lr1))[,1]
pi_figo_0 = exp(coefs[1])/(1+exp(coefs[1]))
pi_figo_1 = exp(coefs[1] + coefs[2])/(1 + exp(coefs[1] + coefs[2]))
pi_figo_0;pi_figo_1
