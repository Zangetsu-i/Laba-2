import java.util.Scanner;
public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Введите количество чисел: ");
        int n = scanner.nextInt();
        for (int i = 0; i < n; i++) {
            System.out.print("Введите число: ");
            int num = scanner.nextInt();
            System.out.println(reverse(num));
        }
    }
    public static int reverse(int x) {
        boolean negative = x < 0;
        int rev = 0;
        if (negative) {
            x = -x;
        }
        while (x > 0) {
            rev = rev * 10 + x % 10;
            x = x / 10;
        }
        return negative ? -rev : rev;
    }
}
