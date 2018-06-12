Auto = read.csv("~/Documents/Auto.csv", header=T, na.strings="?")
Auto = na.omit(Auto)
summary(Auto)
'''
 Use the lm() function to perform a simple linear regression with
mpg as the response and horsepower as the predictor. Use the
summary() function to print the results. Comment on the output.
For example:
'''
lm.fit = lm(Auto$mpg~Auto$horsepower)
summary(lm.fit)
'''
 What is the predicted mpg associated with a horsepower of
98? What are the associated 95 % confidence and prediction
intervals?
'''
predict(lm.fit, data.frame(horsepower=c(98)), interval="confidence")
predict(lm.fit, data.frame(horsepower=c(98)), interval="prediction")
'''
Plot the response and the predictor. Use the abline() function
to display the least squares regression line.
'''
plot(Auto$horsepower, Auto$mpg)
abline(lm.fit)