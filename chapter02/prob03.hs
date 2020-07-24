-- Write a function, "lastButOne", that returns the element before the last

lastButOne :: [a] -> a
lastButOne [x, _] = x
lastButOne (_:xs) = lastButOne xs
