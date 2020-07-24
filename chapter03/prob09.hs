-- Using the binary tree type that we define earlier in this chapter, write a
-- function that will determine the height of the tree. The height is the
-- largest number of hops from the root to an "Empty"

data Tree a = Node a (Tree a) (Tree a)
            | Empty
            deriving (Show)

height :: (Num a, Ord a) => Tree b -> a
height Empty = 0
height (Node _ l r) = 1 + max (height l) (height r)
