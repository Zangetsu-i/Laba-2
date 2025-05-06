using System;
class Program {
    static int Days(int S, int N, int M) {
        if (M > N)
            return -1;
        int sundays = S / 7;
        int foodNeed = S * M;
        int shopWork = S - sundays;
        int minDays = (foodNeed + N - 1) / N;

        if (minDays > shopWork)
            return -1;
        return minDays;
    }
    static void Main() {
        Console.Write("Введите число S: ");
        int S = int.Parse(Console.ReadLine());
        Console.Write("Введите число N: ");
        int N = int.Parse(Console.ReadLine());
        Console.Write("Введите число M: ");
        int M = int.Parse(Console.ReadLine());
        int result = Days(S, N, M);
        if (result == -1)
            Console.WriteLine("Выжить невозможно");
        else
            Console.WriteLine($"Минимальное количество дней {result}");
    }
}
