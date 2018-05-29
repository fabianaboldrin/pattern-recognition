library(ISLR)

'''
We will attempt to predict Sales (child car seat sales) in 400 locations
based on a number of predictors.
'''
names(Carseats)
'''
Given a qualitative variable such as Shelveloc, R generates dummy variables
automatically. Below we fit a multiple regression model that includes some
interaction terms.
'''
lm.fit=lm(Sales~.+ Income:Advertising + Price:Age, data=Carseats )
summary(lm.fit)
'''
The contrasts() function returns the coding that R uses for the dummy variables.
'''
contrasts (Carseats$ShelveLoc)
