-- The words function counts the number of words in a string. Modify the
-- "WC.hs" example in order to count the number of words in a file
--
-- Modify the WC.hs example again, in order to print the number of characters
-- in a file

main = interact wordCount
    where lineCount input = show (length (lines input)) ++ "\n"
          wordCount input = show (length (words input)) ++ "\n"
          charCount input = show (length input) ++ "\n"
