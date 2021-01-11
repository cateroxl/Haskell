toPart recipient = "Hello, " ++ recipient ++ "!\n"

bodyPart message = message ++ "\n"

fromPart sender = "Regards, " ++ sender

createEmail recipient message sender = toPart recipient ++
                                       bodyPart message ++
                                       fromPart sender

main :: IO()
main = do
  print "Who are you writing to?"
  recipient <- getLine
  print "Alright. Now, what do you want to say to them?"
  message <- getLine
  print "Interesting. What's your name?"
  sender <- getLine
  print (createEmail recipient message sender)
