-- Consider three two-dimensional points a, b, and c. If we look at the angle
-- formed by the line segment from a to b and the line segment from b to c, it
-- turns left, turns right, or forms a straight line. Define a "Direction" data
-- type that lets you represent these possibilities

data Direction = Left | Right | Straight deriving (Show, Eq)

-- Write a function that calculates the turn made by three two-dimensional
-- points and returns a "Direction"

data Point2D = Point2D {x, y :: Double} deriving (Show, Eq, Ord)

turn :: Point2D -> Point2D -> Point2D -> Direction
turn p1 p2 p3
  | determinant < 0 = Main.Right
  | determinant > 0 = Main.Left
  | otherwise = Main.Straight
  where
    determinant = (x p2 - x p1) * (y p3 - y p1) - (y p2 - y p1) * (x p3 - x p1)

-- Define a function that takes a list of two-dimensional points and computes
-- the direction of each successive triple. Given a list of points "[a, b, c,
-- d, e]", it should begin by computing the turn made by "[a, b, c]", then the
-- turn made by "[b, c, d]", then "[c, d, e]". Your function should return a
-- list of "Direction"

turns :: [Point2D] -> [Direction]
turns (p1:p2:p3:ps) = turn p1 p2 p3 : turns (p2:p3:ps)
turns _ = []

-- Using the code from the preceding three exercises, implement Graham's scan
-- algorithm for the convex hull of a set of 2D points

sortByY xs = sortBy lowestY xs
    where lowestY a b = sortBy (y a, x a) (y b, x b)

