def reverse(x):
    negative = x < 0
    rev = 0
    if negative:
        x = - x
    while x > 0:
        rev = rev * 10 + x % 10
        x = x // 10
    return -rev if negative else rev
n = int(input("Введите количество чисел: "))
for i in range(n):
    num = int(input("Введите число: "))
    print(reverse(num))
