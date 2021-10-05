a <- 0
while(a < 10) {
  print(a)
  a = a + 1
}

a <- 0
while(a < 10) {
  print(a)
  a = a + 1
  if(a == 5) {
    break
  }
}

a <- 0
while(a < 10) {
  a = a + 1
  if(a == 5) {
    next
  }
  print(a)
}


a <- 0
while(T) {
  a = a + 1
  if(a == 5) {
    break
  }
  print(a)
}








