names <- c("John","Mac","Sam","Max")
sal <- c(45000,48000,32000,90000)
dept <- c("IT","HR","SALES","IT")

data <- list(names=names, sal=sal, dept=dept)
data

data$names
data$sal
data$dept

data$names[1]
data$sal[1]
data$dept[1]

names <- c("John","Mac","Sam","Max","Shawn")
sal <- c(45000,48000,32000,90000,86000)
dept <- c("IT","HR","SALES","IT",NA)

data <- list(names=names, sal=sal, dept=dept)
data

is.na(data$dept)

add <- function(x,y) {
  return(x + y)
}

sub <- function(x,y) {
  return(x - y)
}

calc <- list(sum=add, diff=sub)
calc
calc$sum(4,5)



