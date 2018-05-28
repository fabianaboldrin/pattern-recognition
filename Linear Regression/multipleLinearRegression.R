library(MASS)
library(ISLR)
'''
Multiple Linear Regression
In order to fit a multiple linear regression model using least squares, we
again use the lm() function. The syntax lm(y∼x1+x2+x3) is used to fit a
model with three predictors, x1, x2, and x3.
'''
lm.fit=lm(medv~lstat+age, data=Boston)
summary (lm.fit)

'''
We can use the following short-hand to use all variables in Boston
data set for generating the linear regression
'''
lm.fit=lm(medv~.,data=Boston)
summary (lm.fit)

'''
The vif() function, part of the car package, can be used to compute variance inflation
factors
'''
library(car)
vif(lm.fit)
'''
For example, in the above regression output, age has a high p-value.
So we may wish to run a regression excluding this predictor. The following
syntax results in a regression using all predictors except age.
'''
lm.fit1=lm(medv~.-age ,data=Boston)
summary (lm.fit1)
