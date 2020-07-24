-- Write a function that computes the mean of a list, i.e, the sum of all
-- elements in the list divided by its length. (You may need to use the
-- "fromIntegral" function to convert the length of a list from an integer
-- intoa floating point number)

-- treats mean of empty list as 0
mean [] = 0
mean lst = sum lst / fromIntegral (length lst)
