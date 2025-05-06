using System;

class Program {
    static string Repeat(string s, int count) {
        string result = "";
        for (int i = 0; i < count; i++) {
            result += s;
        }
        return result;
    }

    static void Drink(int N, int M) {
        int vipito = N;
        int step = 1;
        int pusto = N;

        Console.WriteLine($"input: {N} {M}\nДано: {Repeat("😊", N)}");
        Console.WriteLine($"{step} Шаг {Repeat("😞", pusto)}");

        while (pusto >= M) {
            step++;
            int smen = pusto / M;
            pusto = pusto % M + smen;
            vipito += smen;

            Console.WriteLine($"{step} Шаг {Repeat("😊", pusto)}");

            step++;
            Console.WriteLine($"{step} Шаг {Repeat("😞", pusto)}");
        }

        Console.WriteLine($"Output: {vipito} {step}");
    }

    static void Main() {
        Console.Write("Введите количество банок: ");
        int N = int.Parse(Console.ReadLine());
        Console.Write("Количество банок для обмена: ");
        int M = int.Parse(Console.ReadLine());
        Drink(N, M);
    }
}
