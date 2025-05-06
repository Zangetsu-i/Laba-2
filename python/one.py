S=int(input('Введите число S: '))
N=int(input('Введите число N: '))
M=int(input('Введите число M: '))
def days(S, N, M):
    if M > N:
        return -1
    sundays = S // 7
    food_need = S * M
    shop_work = S - sundays
    min_days = (food_need + N - 1) // N
    if min_days > shop_work:
        return -1
    return min_days
result = days(S, N, M)
if result == -1:
    print('Выжить невозможно')
else:
    print('Минимальное количество дней', result)