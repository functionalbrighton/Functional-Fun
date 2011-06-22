// Thomas Parslow: tom@almostobsolete.net @almostobsolete

from itertools import *

def multiples32upTo(n):
    return sum([x for x in xrange(1,n) if x % 3 == 0 or x % 5 == 0])

def multiples32upToB(n):
    return sum(x for x in xrange(1,n) if x % 3 == 0 or x % 5 == 0)

def multiples32upToInf(n):
    return sum(takewhile(lambda x: x < n, (x for x in count(1) if x % 3 == 0 or x % 5 == 0)))

def imperativeVersion(n):
    s = 0
    for n in xrange(n):
        if n % 3 == 0 or n % 5 == 0:
            s = s + n
    return s

print multiples32upTo(1000)
print multiples32upToInf(1000)
print imperativeVersion(1000)
