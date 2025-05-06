def drink(N, M):
    vipito = N
    step = 1
    pusto = N
    print("input:", N, M, "\nДано:", "😊" * N)
    print(step, "Шаг", "😞" * pusto)
    while pusto >= M:
        step += 1
        smen = pusto // M
        pusto = pusto % M + smen
        vipito += smen
        print(step, "Шаг", "😊" * pusto)
        step += 1
        print(step, "Шаг", "😞" * pusto)
    print("Output:", vipito, step)
    return vipito, step
N = int(input("Введите количество банок: "))
M = int(input("Количество банок для обмена: "))
drink(N, M)