library(MASS)
library(ISLR)
'''
Interaction Terms
It is easy to include interaction terms in a linear model using the lm() function.
The syntax lstat:black tells R to include an interaction term between
lstat and black. The syntax lstat*age simultaneously includes lstat, age,
and the interaction term lstat×age as predictors; it is a shorthand for
lstat+age+lstat:age.
'''
summary (lm(medv~lstat*age ,data=Boston))

'''
Non-linear Transformations of the Predictors
The lm() function can also accommodate non-linear transformations of the
predictors. For instance, given a predictor X, we can create a predictor X2
using I(X^2). The function I() is needed since the ^ has a special meaning I() in a formula; wrapping as we do allows the standard usage in R, which is
to raise X to the power 2. We now perform a regression of medv onto lstat
and lstat2.
'''
lm.fit2=lm(medv~lstat+I(lstat^2), data = Boston)
summary (lm.fit2)
'''
The fuction anova provides very clear evidence that the model containing
the predictors lstat and lstat2 is far superior to the model that only
contains the predictor lstat.
'''
lm.fit=lm(medv~lstat, data = Boston)
anova(lm.fit ,lm.fit2)
par(mfrow=c(2,2))
plot(lm.fit2)
'''
In order to create a cubic fit, we can include a predictor of the form
I(X^3). However, this approach can start to get cumbersome for higherorder
polynomials. A better approach involves using the poly() function to create 
the polynomial within lm(). For example, the following command
produces a fifth-order polynomial fit:
'''
lm.fit5=lm(medv~poly(lstat ,5), data = Boston)
summary (lm.fit5)

'''
Of course, we are in no way restricted to using polynomial transformations
of the predictors. Here we try a log transformation.
'''
summary (lm(medv~log(rm),data=Boston))
