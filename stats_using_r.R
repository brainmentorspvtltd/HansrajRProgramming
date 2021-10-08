View(airquality)

mean(airquality$Temp)

x <- c(1,2,3,4,5)
x <- c(1,2,3,4,5,6)
median(x)

x <- c(1,2,3,4,5,3,2,3,5,6,8,0,3,3,3)
unique(x)
findMode <- function(data) {
  uniq <- unique(data)
  uniq[which.max(tabulate(match(data, uniq)))]
}
findMode(x)

which.max(tabulate(match(x, unique(x))))

max(airquality$Temp) - min(airquality$Temp)
# IQR - Interquartile range = Upper Quartile - Lower Quartile

quantile(airquality$Temp)
IQR(airquality$Temp)

# BoxPlot - identify outliers
boxplot(airquality$Temp)
boxplot(airquality$Temp, horizontal = T)

boxplot(airquality$Wind, horizontal = T)

# find outliers
boxplot.stats(airquality$Wind)

# Standard Deviation
# Variance

sd(airquality$Temp)
var(airquality$Temp)










