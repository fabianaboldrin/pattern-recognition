Auto = read.csv("~/Documents/Auto.csv", header=T, na.strings="?")
Auto = na.omit(Auto)
'''
Produce a scatterplot matrix which includes all of the variables
in the data set.
'''
pairs(Auto)
'''
 Compute the matrix of correlations between the variables using
the function cor(). You will need to exclude the name variable, 
which is qualitative.
'''
cor(subset(Auto, select = -name))
'''
Use the lm() function to perform a multiple linear regression
with mpg as the response and all other variables except name as
the predictors.
'''
lm.fit2 = lm(mpg~.-name, data=Auto)
summary(lm.fit2)
'''
Use the plot() function to produce diagnostic plots of the linear
regression fit.
'''
par(mfrow=c(2,2))
plot(lm.fit2)
par(mfrow=c(1,1))
plot(predict(lm.fit2), rstudent(lm.fit2))
'''
Use the * and : symbols to fit linear regression models with
interaction effects
'''
lm.fit3 = lm(mpg~cylinders*displacement+displacement*weight,
             data = Auto)
summary(lm.fit3)
lm.fit4 = lm(mpg~log(weight)+sqrt(horsepower)+acceleration+I(acceleration^2),
             data = Auto)
summary(lm.fit4)

