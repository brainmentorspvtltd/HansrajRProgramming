# Loops
# - for
# - while
# - repeat

for(var in 1:10) {
  print(5*var)
}

# 1
# 12
# 123
# 1234
# 12345

for(i in 1:5) {
  print(1:i)
}



# *
# **
# ***
# ****
# *****
stars <- c()
for(i in 1:5) {
  for(j in 1:i) {
    stars = c(stars, '*')
  }
  print(noquote(stars))
  stars = c()
}







