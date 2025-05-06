def reverse(x)
    neg = x < 0
    rev = 0
    if neg
        x = -x
    end
    while x > 0
        rev = rev * 10 + x % 10
        x = x / 10
    end
    if neg
        return -rev
    else 
        return rev
    end
end    
print("Введите количество чисел: ")
n = gets.chomp().to_i
i = 0
while i < n
    print("Введите число: ")
    num = gets.chomp().to_i
    puts reverse(num)
    i += 1
end
