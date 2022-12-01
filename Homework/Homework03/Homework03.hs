-- Question 1
-- Write a function that checks if the monthly consumption of an electrical device is bigger, equal, or smaller than the maximum allowed and
-- returns a message accordingly. 
-- The function has to take the hourly consumption of an electrical device, the hours of daily use, and the maximum monthly consumption allowed.
-- (Monthly usage = consumption (kW) * hours of daily use (h) * 30 days).

maxAllowed :: Double -> Double -> Double -> String
maxAllowed kwDevice hrsDevice maxAllowed
    | consumption < maxAllowed = "consumption is less than allowed"
    | consumption == maxAllowed = "consumption is equal to allowed"
    | otherwise = "the max is exceeded"
    where
        consumption = kwDevice * (hrsDevice * 30)

-- Question 2
-- Prelude:
-- We use the function `show :: a -> String` to transform any type into a String.
-- So `show 3` will produce `"3"` and `show (3 > 2)` will produce `"True"`.

-- In the previous function, return the excess/savings of consumption as part of the message.

maxAllowed2 :: Double -> Double -> Double -> String
maxAllowed2 kwDevice hrsDevice maxAllowed
    | consumption < maxAllowed = "consumption is less than allowed by the amount of: " ++ show savings
    | consumption == maxAllowed = "consumption is equal to allowed"
    | otherwise = "the max is exceeded"
    where
        consumption = kwDevice * (hrsDevice * 30)
        savings = maxAllowed - consumption

-- Question 3
-- Write a function that showcases the advantages of using let expressions to split a big expression into smaller ones.
-- Then, share it with other students in Canvas.

{-CHRISTMAS PRESENTS CALCULATOR: Enter how good the child has been, on a scale of 1 to 10 (hG).  Then enter how old the  
child is between 4 and 14 (hO).  This function calculates how many presents to give them at Christmas, or if the child 
should just be gifted a lump of coal as punishment. 
This calculator teaches growing children to be good, weans older children off presents, and avoids traumatizing 
children under the age of 10. 
No- I never received a lump of coal for Christmas so I don't know how it feels.-}

christmasP :: Double -> Double -> String
christmasP hG hO =
    let
        x = (hG + 4)
        y = (hO/2)
        z = round (x-y)
    in
        if x - y > 0 
            then show z 
            else "wrap a piece of coal for the child"
        
-- Question 4
-- Write a function that takes in two numbers and returns their quotient such that it is not greater than 1.
-- Return the number as a string, and in case the divisor is 0, return a message why the division is not
-- possible. To implement this function using both guards and if-then-else statements.  

numsToQuotGuard :: Double -> Double -> String
numsToQuotGuard x y
    | x == 0 = "division is not possible because x = 0" 
    | y == 0 = "division is not possible because y = 0"
    | x < y = show (x/y)
    | x > y = show (y/x)

numsToQuotIfThen :: Double -> Double -> String
numsToQuotIfThen x y =
    if x == 0 then "division is not possible because x = 0" else
        if y == 0 then "division is not possible because y = 0" else
            if x < y then show (x/y) else
                if x > y then show (y/x) else "error"


-- Question 5
-- Write a function that takes in two numbers and calculates the sum of squares for the product and quotient
-- of those numbers. Write the function such that you use a where block inside a let expression and a
-- let expression inside a where block. 

sumPQ1 :: Double -> Double -> Double
sumPQ1 x y = let a = (x*y)^2; b = (x/y)^2
                in a + b
