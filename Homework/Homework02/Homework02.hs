
-- Question 1
-- Add the type signatures for the functions below and then remove the comments and try to compile.
-- (Use the types presented in the lecture.)

f1 :: Double -> Double -> Double -> Double
f1 x y z = x ** (y/z)

f2 :: Double -> Double ->Double ->Double
f2 x y z = sqrt (x/y - z)

f3 :: Bool -> Bool -> [Bool]
f3 x y = [x == True] ++ [y]

f4 :: String -> String -> String -> Bool
f4 x y z = x == (y ++ z)


-- Question 2
-- Why should we define type signatures of functions? How can they help you? How can they help others?
{-Type signatures create type safety and give others an overview of flow of logic in our code-}

-- Question 3
-- Why should you define type signatures for variables? How can they help you?
{-type signatures ensure that the correct variables are introduced to functions so that they perform as expected -}

-- Question 4
-- Are there any functions in Haskell that let you transform one type to the other? Try googling for the answer.
{-Yes many.  For example, a function that combines two Char variables can create a String variable -}

-- Question 5
-- Can you also define in Haskell list of lists? Did we showed any example of that? How would you access the inner
-- most elements?
{- a list of lists is created by using two brackets instead of one.  For example [[a]] is a list inside a list. -}

