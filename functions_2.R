# Local
# Global

# Global Scope
z = 100
add <- function(x,y=0) {
  # Local
  z = x + y
  print(z)
}

add(5)
add(10)
add(5,6)

print(paste("Sum is",z))
