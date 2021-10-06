# outer <- function() {
#   name <<- "John"
# }
# 
# outer()
# print(name)

outer <- function() {
  inner <- function() {
    print("Hello From Inner")
  }
  return(inner)
}
nested <- outer()
nested()


outer <- function() {
  msg = "Hello World"
  return(msg)
}
text <- outer()
print(text)


