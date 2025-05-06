import java.util.Scanner;
public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Введите число S: ");
        int S = scanner.nextInt();
        System.out.print("Введите число N: ");
        int N = scanner.nextInt();
        System.out.print("Введите число M: ");
        int M = scanner.nextInt();
        int result = days(S, N, M);
        if (result == -1) {
            System.out.println("Выжить невозможно");
        } else {
            System.out.println("Минимальное количество дней: " + result);
        }
        scanner.close();
    }
    public static int days(int S, int N, int M) {
        if (M > N) {
            return -1;
        }
        int sundays = S / 7;
        int foodNeed = S * M;
        int shopWorkDays = S - sundays;
        int minDays = (foodNeed + N - 1) / N;
        if (minDays > shopWorkDays) {
            return -1;
        }
        return minDays;
    }
}
