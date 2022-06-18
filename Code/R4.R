attach (ardl)
library(lmtest)
model<-lm(GDP~EXPO+CONS)
#auto correlation test
#Null: residuals are not auto correlated (No autocorrelation)
#Alt: residuals are autocorrelated 
resid=resid(model)
resid
data.frame(resid)
plot(resid)
dwtest(model)
#lag1
library(EnvStats)
serialCorrelationTest(model)
