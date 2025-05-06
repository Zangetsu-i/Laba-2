#include <iostream>
using namespace std;
int reverse(int x) {
    bool negative = x < 0;
    int rev = 0;
    if (negative) x = -x;
    while (x > 0) {
        rev = rev * 10 + x % 10;
        x = x / 10;
    }
    return negative ? -rev : rev;
}
int main() {
    int n;
    cout << "Введите количество чисел: ";
    cin >> n;
    for (int i = 0; i < n; ++i) {
        int num;
        cout << "Введите число: ";
        cin >> num;
        cout << reverse(num) << endl;
    }
    return 0;
}
