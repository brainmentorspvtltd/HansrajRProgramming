while (TRUE) {
  msg <- readline("Enter your message : ")
  
  if(msg == "hi" || msg == "Hi") {
    print("Hello User")
  } else if(msg == "bye" || msg == "Bye") {
    print("Bye User")
    break
  } else {
    print("I don't understand")
  }
}
