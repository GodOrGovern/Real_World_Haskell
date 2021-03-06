-- Create a function that sorts a list of lists based on the length of each
-- sublist. (You may want to look at the "sortBy" function from the "Data.List"
-- module

import Data.List

sortLists lst = sortBy compLength lst
    where compLength a b = compare (length a) (length b)
