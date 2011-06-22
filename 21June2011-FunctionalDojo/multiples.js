// Thomas Parslow: tom@almostobsolete.net @almostobsolete

function sum(list) {
    return _.reduce(list, function (x,y) {return x+y}, 0)
}

function multiples (n) {
    return sum(_.select(_.range(1, 1000), function (x) {return x % 3 == 0 || x % 5 == 0}));
}

alert(multiples(1000));



function multiples2 (from, until) {
    if (from > until) return 0;
    return multiples2(from+1, until) + (from % 3 || from % 5) ? from : 0
}



alert(multiples2(1000)); // Will break the recursion limit