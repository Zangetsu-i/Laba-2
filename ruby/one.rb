def ostrov(s, n, m)
    if m > n
        return -1
    end
    need_food = s * m
    saturday = s / 7
    days_work = s - saturday
    min_days = (need_food + n - 1) / n
    if min_days > days_work
        return -1
    end
    return min_days
end
print("Введите значение s: ")
s = gets.chomp().to_i
print("Введите значение n: ")
n = gets.chomp().to_i
print("Введите значение m: ")
m = gets.chomp().to_i
ostrov(s, n, m)
result = ostrov(s, n, m)
if result == -1
    puts("Выжить невозможно: ", result)
else
    puts("Минимальное количество дней: ", result)
end
