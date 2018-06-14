library(ISLR)
'''
This question should be answered using the Carseats data set.
'''
summary(Carseats)
attach(Carseats)
'''
Fit a multiple regression model to predict Sales using Price,
Urban, and US.
'''
lm.fit = lm(Sales~Price+Urban+US)
summary(lm.fit)
'''
Write out the model in equation form, being careful to handle
the qualitative variables properly
'''
Sales = 13.04 + -0.05 Price + -0.02 Urban + 1.20 US
'''
For which of the predictors can you reject the null hypothesis
H0 : βj = 0?
R: Price and USYes, based on the p-values, F-statistic, 
and p-value of the F-statistic.

 On the basis of your response to the previous question, fit a
smaller model that only uses the predictors for which there is
evidence of association with the outcome.
'''
lm.fit2 = lm(Sales~Price+US)
summary(lm.fit2)
'''
Using the model from (e), obtain 95 % confidence intervals for
the coefficient(s).
'''
confint(lm.fit2)
'''
Is there evidence of outliers or high leverage observations in the
model from (e)?
'''
plot(predict(lm.fit2), rstudent(lm.fit2))
