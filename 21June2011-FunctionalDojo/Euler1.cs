using System;
using System.Linq;

namespace FunctionalDojo
{
    public class Euler1
    {
        public int Sum(int n)
        {
            return Enumerable.Range(1, n).Where(x => x % 3 == 0 || x % 5 == 0).Sum();
        }

        public void Run()
        {
            Console.WriteLine(Sum(10));
            Console.WriteLine(Sum(1000));
        }
    }
}