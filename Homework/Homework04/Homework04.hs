-- Question 1
-- Lets say you have the nested values defined bellow. How would you get the value of
-- 4 by using only pattern matching in a function?

nested :: [([Int], [Int])]
nested = [([1,2],[3,4]), ([5,6],[7,8])]

extract [([_,_],[_,x]),(_)]= show x
extract1 [([_,_],[_,x]),([_,_],[_,_])]= show x

-- Question 2
-- Write a function that takes a list of elements of any type and, if the list has 3 or more elements, it
-- removes them. Else, it does nothing. Do it two times, one with multiple function definitions and one with
-- case expressions.

remove :: [Int] -> String
remove (x:y:rest) = show [x, y]
remove [x] = show [x]
remove [] = "no elements were given"


remove1 list =
    case list of 
        (x:y:rest) -> show [x,y]
        [x] -> show [x]
        [] -> "no elements were given"


-- Question 3
-- Create a function that takes a 3-element tuple (all of type Integer) and adds them together

addTups :: (Int, Int, Int) -> Int
addTups (a, b, c) = a + b + c

-- Question 4
-- Implement a function that returns True if a list is empty and False otherwise.

chkList :: [a] -> Bool
chkList [] = True
chkList (a) = False

-- Question 5
-- Write the implementation of the tail function using pattern matching. But, instead of failing if
-- the list is empty, return an empty list.

atail :: [a] -> [a]
atail (x:xs) = xs
atail [] = []

-- Question 6
-- write a case expression wrapped in a function that takes an Int and adds one if it's even. Otherwise does nothing. 
-- (Use the `even` function to check if the number is even.)

evenAdd :: Int -> Int
evenAdd x = case even x of
    True -> x
    otherwise -> x + 1