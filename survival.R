library(survival)
library(survminer)
library(stringr)
data = read.csv("D:/Desktop/CB/BRCA.csv")
head(data)
colnames(data)[5] = 'cancer'

fit = survfit(Surv(cancer,Event)~ Gender,data=data)
fit

ggsurvplot(fit,data=data)
ggsurvplot(fit,data=data,surv.median.line='hv')
ggsurvplot(fit,data=data,surv.median.line='hv',pval = T)
ggsurvplot(fit,data=data,surv.median.line='hv',pval = T,risk.table = T)




