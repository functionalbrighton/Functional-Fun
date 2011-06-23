// From http://learningfsharp.blogspot.com/2010/12/project-euler-problem-1.html
// Run via http://www.tryfsharp.org/Tutorials.aspx#

let natNums = [|1..999|] |> Array.filter (fun x -> x % 3 = 0 || x % 5 = 0) |> Array.sum

