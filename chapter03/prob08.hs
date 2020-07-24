-- Define a function that joins a list of lists together using a separator
-- value. The separator should appear between elements of the list, but it
-- should not follow the last element

intersperse :: a -> [[a]] -> [a]
intersperse sep xs = join [] xs
    where join lst [a] = lst ++ a
          join lst (a:as) = join (lst ++ a ++ [sep]) as
