import java.util.Scanner;
public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Введите количество банок: ");
        int N = scanner.nextInt();
        System.out.print("Количество банок для обмена: ");
        int M = scanner.nextInt();
        drink(N, M);
    }
    public static int[] drink(int N, int M) {
        int vipito = N;
        int step = 1;
        int pusto = N;
        System.out.println("input: " + N + ", " + M);
        System.out.println("Дано: " + "😊".repeat(N));
        System.out.println(step + " Шаг " + "😞".repeat(pusto));
        while (pusto >= M) {
            step++;
            int smen = pusto / M;
            pusto = (pusto % M) + smen;
            vipito += smen;
            System.out.println(step + " Шаг " + "😊".repeat(pusto));
            step++;
            System.out.println(step + " Шаг " + "😞".repeat(pusto));
        }
        System.out.println("Output: " + vipito + ", " + step);
        return new int[]{vipito, step};
    }
}
