import Control.Applicative

-- our first version with a list comprehension
solnA = sum (multiples35A 1000)
multiples35A n = [ x | x <- [1..n], x `mod` 3 == 0 || x `mod` 5 == 0 ]

-- a second solution showing function composition
solnB = sum
      . filter (\x -> x `mod` 3 == 0 || x `mod` 5 == 0)
      $ [1..1000]

-- ... and the where clause syntax
solnC = sum . filter f $ [1..1000]
 where
  f x = x `mod` 3 == 0 || x `mod` 5 == 0  

-- and the difference between pointfree and pointed
mkSolnPointed   xs = sum . filter f $ xs
mkSolnPointless    = sum . filter f 

f x = x `mod` 3 == 0 || x `mod` 5 == 0  

-- point-free can be great for extra clarity
-- ...but it may lead to obfuscation
-- (thanks, lambdabot!)
f2 = (<*>) ((||) . (0 ==) . (`mod` 3)) ((0 ==) . (`mod` 5))
-- minor tech detail:
-- lambdabot used `ap`, but this requires an instance of the Monad
-- type class for (->), so I'll just use (<*>) instead

-- although as Andy points out, it's actually not *so* bad.
-- If you squint at it, a bit of structure emerges
f3 = ((||) . divisibleBy 3)
        <*> (divisibleBy 5)

divisibleBy n = (0 ==) . (`mod` n)
