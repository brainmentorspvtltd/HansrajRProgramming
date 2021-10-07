# Apply Family
# apply - return array, list, or vector
# lapply - return list
# sapply - simplify apply, user-friendly version of lapply
# tapply - apply a function on each cell of array 
# vapply - similarly to sapply
# mapply - multivariate version of sapply
# rapply - recursive version of lapply

# apply(array, margin, ...)
m1 <- matrix(1:10, nrow=5, ncol=6)
m1

# X - data
# Margin - it takes value either 1 or 2
# 1 - manipulate rows
# 2 - manipulate cols
# c(1,2) - manipulate both rows and cols
# FUN - User Defined or Pre Defined Function
#     - sum, max, min, mean

apply(m1, 2, sum)
apply(m1, 2, max)
apply(m1, 2, min)

apply(m1, 1, sum)
apply(m1, 1, max)
apply(m1, 1, min)

apply(airquality , 2, max)
apply(airquality , 2, max, na.rm=T)

apply(airquality, 2, 
      function(x) length(x [x<0] ))

# lapply
data <- c('RaVi','joHn','ToM','Max','MikE')
lapply(data, tolower)

lapply(airquality, min)$Temp

sapply(airquality ,min)


View(iris)
tapply(iris$Sepal.Width, iris$Species, median )
tapply(iris$Sepal.Width, iris$Species, mean )


rep(1,4)
rep(4,4)

mapply(rep, 1:4, 4)


x <- list(list(a = pi, b=list(c = 1:1)), d='data')
x

rapply(x, function(x) x)
rapply(x, sqrt, classes="numeric")



