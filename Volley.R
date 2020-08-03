## Test code
attach(Volley)
#Calculate: winning ratio = Win / Win + Loss
winPct = W/(W + L) 
Volley = as.data.frame(cbind(Volley, winPct))

(f1 = winPct ~ Pct + `Opp Pct` + W + L + S +   
  +  Kills + Errors + `Total Attacks` 
  + `Opp Kills` + `Opp Errors` + `Opp Attacks`
  + Aces + Assists + Digs +`Block Solos` + `Block Assists`)
f1.summary = summary(lm(f1, data=Volley))


(f2 = winPct ~ Pct + `Opp Pct` +S +   
    +  Kills + Errors + `Total Attacks` 
  + `Opp Kills` + `Opp Errors` + `Opp Attacks`
  + Aces + Assists + Digs +`Block Solos` + `Block Assists`)
f2.summary = summary(lm(f2, data=Volley))


(f3 = winPct*100 ~ S + Kills + Errors + `Total Attacks` 
  + `Opp Kills` + `Opp Errors` + `Opp Attacks`
  + Aces + Assists + Digs +`Block Solos` + `Block Assists`)
f3.output = lm(f3, data=Volley)
f3.summary = summary(f3.output)
f3.confint = confint(f3.output)


install.packages("corrplot")
library(corrplot)
subdata = subset(Volley, select=c())
res = cor(subdata)
corrplot(res)

# Model selection
library(leaps)
leaps = regsubsets(f4, data=Volley, nbest=5, force.in="S", force.out=)
plot(leaps)

# Logit
winPct.high = ifelse(winPct >= 0.5, 1, 0)
Volley = as.data.frame(cbind(Volley, winPct.high))
(f4 = winPct.high ~ S +   
    +  Kills + Errors + `Total Attacks` 
  + `Opp Kills` + `Opp Errors` + `Opp Attacks`
  + Aces + Assists + Digs +`Block Solos` + `Block Assists`)
f4.output = glm(f4, family = binomial(), data=Volley)
f4.summary = summary(f4.output)
f4.coefs = exp(f4.output$coefficients)
f4.confint = confint(f4.output)
cbind(f4.coefs, exp(f4.confint))




# Correlation Plot

Volley.corr = Volley[, 4:19]
Volley.corr$Pct <- NULL
Volley.corr$`Opp Pct` <- NULL
M = cor(Volley.corr[c(14, 1:13)])
corrplot(M, method = "circle")
col <- colorRampPalette(c("#BB4444", "#EE9988", "#FFFFFF", "#77AADD", "#4477AA"))
corrplot(M, method = "color", col = col(200),type = "upper", order = "hclust", number.cex = .7, addCoef.col = "black")




plot(f3.output$residuals)
cbind(f3.output$fitted.values, winPct*100)
View(Volley)
plot(f3.output$residuals)
  
Volley$School[c(1:5)]
          
f4.summary



exp(-0.0177683)




beer.ts <- ts(cbe[, 2], start = 1958, freq = 12)
plot(beer.ts)
plot(decompose(beer.ts))

Time <- 1:length(beer.ts)
Season <- cycle(beer.ts)
beer.lm <- lm(log(beer.ts) ~ Time + I(Time^2)+ factor(Season))
coef(beer.lm)
confint(beer.lm)
acf(resid(beer.lm))

# Best AR
beer.ar <- ar(beer.ts, method = "mle") 
beer.ar$order 
beer.ar$ar 
acf(beer.ar$resid[-(1:beer.ar$order)])


# ARMA from lm
best.order <- c(0, 0, 0)
best.aic <- Inf
for (i in 0:10) for (j in 0:2) {
  arma <- arima(resid(beer.lm), order = c(i, 0, j))
  fit.aic <- AIC(arma)
  if (fit.aic < best.aic) {
    best.order <- c(i, 0, j)
    best.arma <- arima(resid(beer.lm), order = best.order)
    best.aic <- fit.aic
  }
}
best.order

best.arma = arima(resid(beer.lm), order = c(8, 0, 2))
coef(best.arma)
acf(resid(best.arma))

# Prediction for 2 years
h = 12*2
new.time <- seq(length(beer.ts), length = h)
new.data <- data.frame(Time = new.time, Season = rep(1:12,2))
predict.lm <- predict(beer.lm, new.data) #xt hat value
predict.arma <- predict(best.arma, n.ahead = h)
predict.arma.zhat <- predict.arma$pred # zt hat value

# starting from Year 1991
beer.pred <- ts(exp(predict.lm + predict.arma.zhat), start = 1991, freq = 12)
ts.plot(cbind(beer.ts, beer.pred), lty = 1:2, col = c("black", "blue"))

beer.hw <- HoltWinters(beer.ts)
beer.hw$coefficients
plot(beer.hw$fitted)
plot(beer.hw)
