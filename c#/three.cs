using System;

class Program {
    static int Reverse(int x) {
        bool negative = x < 0;
        int rev = 0;
        if (negative) x = -x;

        while (x > 0) {
            rev = rev * 10 + x % 10;
            x /= 10;
        }

        return negative ? -rev : rev;
    }

    static void Main() {
        Console.Write("Введите количество чисел: ");
        int n = int.Parse(Console.ReadLine());

        for (int i = 0; i < n; i++) {
            Console.Write("Введите число: ");
            int num = int.Parse(Console.ReadLine());
            Console.WriteLine(Reverse(num));
        }
    }
}
