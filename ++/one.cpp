#include <iostream>
using namespace std;
int ostrov(int S, int M, int N)
{
    if (M > N)
    return -1;
    int sundays = S / 7;
    int shop_work = S - sundays;
    int need_food = S * M;
    int min_days = (need_food + N - 1) / N;
    if (min_days > shop_work)
    return -1;
return min_days;
}
int main()
{
    int S, N, M;
    cout << "Введите число S: ";
    cin >> S;
    cout << "Введите число N: ";
    cin >> N;
    cout << "Введите число M: ";
    cin >> M;
    int result = ostrov(S, M, N);
    if (result == -1 )
    cout << "Выжить невозможно" << endl;
    else
    cout << "Минимальное количество дней: " << result << endl;
}
