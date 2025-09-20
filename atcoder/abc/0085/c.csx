var xs = Console.ReadLine().Split();

var n = int.Parse(xs[0]);
var y = int.Parse(xs[1]);

var a = 10000;
var b = 5000;
var c = 1000;

for (int i = 0; i <= n; i++)
{
    for (int j = 0; j <= n; j++)
    {
        var k = n - i - j;

        if (k < 0 || k > n) continue;
        var x = a * i + b * j + c * k;

        if (x == y)
        {
            Console.WriteLine("{0} {1} {2}", i, j, k);
            return;
        }
    }
}

Console.WriteLine("-1 -1 -1");