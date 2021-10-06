# Dynamic Arguments
# Variable length args

add <- function(...) {
  print(sum(...))
}
add(3,4)
add(3,4,5)
add(3,4,5,12,12,5,7,8)
add(3,4,5,1,4,6,89,98,6,5,4)
add(3)
add()
