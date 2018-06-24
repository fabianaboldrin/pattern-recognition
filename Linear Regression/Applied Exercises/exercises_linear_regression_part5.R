'''
This problem focuses on the collinearity problem.
'''
set.seed(1)
x1=runif (100)
x2=0.5*x1+rnorm (100)/10
y=2+2*x1+0.3*x2+rnorm (100)
'''
The last line corresponds to creating a linear model in which y is
a function of x1 and x2. Write out the form of the linear model.
What are the regression coefficients?
'''
#Y=2+2X1+0.3X2+ϵ
#β0=2,β1=2,β3=0.3
