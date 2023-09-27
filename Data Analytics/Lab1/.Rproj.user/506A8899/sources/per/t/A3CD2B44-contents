multivariate <- read.csv("../multivariate.csv")

multivariate
head(multivariate)
attach(multivariate)

mm <- lm(Homeowners ~ Immigrant)
summary(mm)$coef
plot(Homeowners~Immigrant)
abline(mm)
abline(mm, col=2, lwd = 3)
newImmigrantdata <- data.frame(Immigrant = c(0, 20))
mm %>% predict(newImmigrantdata)
abline(mm)
abline(mm,col=3,lwd=3) 
attributes(mm)
mm$coefficients

plot(mtcars$wt,mtcars$mpg)
library(ggplot2)
qplot(mtcars$wt,mtcars$mpg)
qplot(wt, mpg, data = mtcars)
ggplot(mtcars, aes(x=wt, y=mpg)) + geom_point()
plot(pressure$temperature,pressure$pressure, type = "l")
points(pressure$temperature,pressure$pressure)

lines(pressure$temperature, pressure$pressure/2, col="red")
points(pressure$temperature, pressure$pressure/2, col="blue")
qplot(pressure$temperature, pressure$pressure, geom="line")
