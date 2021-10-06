matrix(seq(1,24))

x <- matrix(seq(1,24), nrow=6, ncol=4)
x

x <- matrix(seq(1,24), nrow=6, ncol=4,
            byrow = T)
x

x <- matrix(seq(1,24), nrow=6, ncol=4,
            byrow = T,
            dimnames = list(c('a','b','c','d','e','f'),
                            c('i','j','k','l')))
x


x[1]
x[2]
x[3]

# will return 1st col
x[,1]
# will return 1st row
x[1,]

x[1,2]
x[4,3]

x[1:3,1:3]

x
x[,1] = c(10,20,30,40,50,60)
x

x + 5
x[1,] + 7
x[,1] - 5


