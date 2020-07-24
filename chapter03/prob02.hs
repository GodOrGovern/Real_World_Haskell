-- Define a tree type that has only one constructor, like our Java example.
-- Instead of the "Empty" constructor, use the "Maybe" type to refer to a
-- node's children

data Maybe a = Just a
            | Nothing

data Tree a = Node a (Maybe (Tree a)) (Maybe (Tree a))
            deriving (Show)
