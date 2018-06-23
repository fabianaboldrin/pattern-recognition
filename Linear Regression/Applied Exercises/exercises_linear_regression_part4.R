'''
In this exercise you will create some simulated data and will fit simple
linear regression models to it. Make sure to use set.seed(1) prior to
starting part (a) to ensure consistent results
'''

'''
Using the rnorm() function, create a vector, x, containing 100
observations drawn from a N(0, 1) distribution. This represents
a feature, X.
'''
set.seed(1)
x = rnorm(100)
'''
Using the rnorm() function, create a vector, eps, containing 100
observations drawn from a N(0, 0.25) distribution i.e. a normal
distribution with mean zero and variance 0.25.
'''
eps = rnorm(100, 0, sqrt(0.25))
'''
Using x and eps, generate a vector y according to the model
Y = −1+0.5X + E.
What is the length of the vector y? What are the values of β0
and β1 in this linear model?
'''
y = -1 + 0.5*x + eps
'''
Fit a least squares linear model to predict y using x. Comment
on the model obtained. How do βˆ0 and βˆ1 compare to β0 and
β1?
'''
lm.fit = lm(y~x)
summary(lm.fit)
'''
Now fit a polynomial regression model that predicts y using x
and x2. Is there evidence that the quadratic term improves the
model fit? Explain your answer.
'''
lm.fit_sq = lm(y~x+I(x^2))
summary(lm.fit_sq)
'''
Repeat (a)–(f) after modifying the data generation process in
such a way that there is less noise in the data. The model (3.39)
should remain the same. You can do this by decreasing the variance
of the normal distribution used to generate the error term
in (b). Describe your results.
'''
set.seed(1)
eps1 = rnorm(100, 0, 0.125)
x1 = rnorm(100)
y1 = -1 + 0.5*x1 + eps1
lm.fit1 = lm(y1~x1)
summary(lm.fit1)
'''
Repeat (a)–(f) after modifying the data generation process in
such a way that there is more noise in the data. The model
(3.39) should remain the same. You can do this by increasing
the variance of the normal distribution used to generate the
error term  in (b). Describe your results.
'''

