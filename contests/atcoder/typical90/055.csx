var xs = Console.ReadLine().Split();

var n = int.Parse(xs[0]);
var p = int.Parse(xs[1]);
var q = int.Parse(xs[2]);

long[] vs = Console.ReadLine().Split().Select(x => long.Parse(x) % p).ToArray();

var ans = 0;

for (int i = 0; i < n - 4; i++)
{
    for (int j = i + 1; j < n - 3; j++)
    {
        for (int k = j + 1; k < n - 2; k++)
        {
            for (int l = k + 1; l < n - 1; l++)
            {
                for (int m = l + 1; m < n; m++)
                {
                    var t = vs[i] % p;
                    t = t * vs[j] % p;
                    t = t * vs[k] % p;
                    t = t * vs[l] % p;
                    t = t * vs[m] % p;
                    if (t == q)
                    {
                        ans++;
                    }
                }
            }
        }
    }
}

Console.WriteLine(ans);