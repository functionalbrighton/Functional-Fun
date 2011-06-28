sum = (lst) -> lst.reduce ((x,y) -> x+y), 0
result = sum(i for i in [1..1000] when i % 3 == 0 or i % 5 == 0)
alert(result);