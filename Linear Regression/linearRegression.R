library(MASS)
library(ISLR)
'''
The goal is seek to predict
medv using 13 predictors such as rm (average number of rooms per house),
age (average age of houses), and lstat (percent of households with low
socioeconomic status).
'''
fix(Boston)
names(Boston)

'''
We will start by using the lm() function to fit a simple linear regression model,
with medv as the response and lstat as the predictor.
The basic syntax is lm(y∼x,data)
'''
lm.fit=lm(medv~lstat, data = Boston)
summary(lm.fit)

'''
We can use the names() function in order to find out what other pieces name
of information are stored in lm.fit
'''
names(lm.fit)
coef(lm.fit)
confint (lm.fit)

'''
The predict() function can be used to produce confidence intervals and
prediction intervals for the prediction of medv for a given value of lstat.
'''
predict (lm.fit ,data.frame(lstat=(c(5,10 ,15))), interval ="confidence")
predict (lm.fit ,data.frame(lstat=(c(5,10 ,15))), interval ="prediction")

'''
We will now plot medv and lstat along with the least squares regression
line using the plot() and abline() functions.
'''
plot(Boston$lstat, Boston$medv ,pch ="+")
abline (lm.fit ,lwd=3,col ="red")
par(mfrow=c(2,2))
plot(lm.fit)

'''
Alternatively, we can compute the residuals from a linear regression fit
using the residuals() function. The function rstudent() will return the 
studentized residuals
'''
plot(predict (lm.fit), residuals (lm.fit))
plot(predict (lm.fit), rstudent (lm.fit))

plot(hatvalues (lm.fit))

