#include <iostream>
using namespace std;
void drink(int N, int M) {
    int vipito = N;
    int step = 1;
    int pusto = N;
    cout << "input: " << N << " " << M << "\nДано: ";
    for (int i = 0; i < N; ++i) cout << "😊";
    cout << endl;
    cout << step << " Шаг ";
    for (int i = 0; i < pusto; ++i) cout << "😞";
    cout << endl;
    while (pusto >= M) {
        step++;
        int smen = pusto / M;
        pusto = pusto % M + smen;
        vipito += smen;

        cout << step << " Шаг ";
        for (int i = 0; i < pusto; ++i) cout << "😊";
        cout << endl;

        step++;
        cout << step << " Шаг ";
        for (int i = 0; i < pusto; ++i) cout << "😞";
        cout << endl;
    }
    cout << "Output: " << vipito << " " << step << endl;
}
int main() {
    int N, M;
    cout << "Введите количество банок: ";
    cin >> N;
    cout << "Количество банок для обмена: ";
    cin >> M;
    drink(N, M);
    return 0;
}
