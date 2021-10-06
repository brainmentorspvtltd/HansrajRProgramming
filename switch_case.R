add <- function(x,y) {
  z = x + y
  return(z)
}

sub <- function(x,y) {
  z = ifelse(x > y, x - y, y - x)
  return(z)
}

div <- function(x,y) {
  z = x / y
  return(z)
}

mul <- function(x,y) {
  z = x * y
  return(z)
}

choice = as.integer(readline("Enter your choice : 1/2/3/4 : "))
num_1 = as.integer(readline("Enter first number : "))
num_2 = as.integer(readline("Enter second number : "))


result <- switch (choice,
  add(num_1,num_2),
  sub(num_1,num_2),
  div(num_1,num_2),
  mul(num_1,num_2)
)
print(result)


choice = readline("Enter your choice : +,-,/,* : ")
result <- switch (choice,
                  "+" = add(num_1,num_2),
                  "-" = sub(num_1,num_2),
                  "/" = div(num_1,num_2),
                  "*" = mul(num_1,num_2)
)
print(result)
