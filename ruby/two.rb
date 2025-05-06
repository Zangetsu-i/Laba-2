def banki(n, m)
    pusto = n 
    step = 1
    vsego_vipito = n
    puts"Input: " + n.to_s + "," + m.to_s
    puts "Дано: " + "😊" * n
    puts step.to_s + "Шаг" + "😞" * n
    while pusto >= m 
        step += 1
        smen = pusto / m 
        pusto = pusto % m + smen
        vsego_vipito += smen
        puts(step.to_s + "Шаг" + "😊" * pusto)
        step += 1
        puts(step.to_s + "Шаг" + "😞" * pusto)
    end
    puts "Output: " + vsego_vipito.to_s + "," + step.to_s
    return vsego_vipito, step
end
print("Введите количество банок: ")
n = gets.chomp().to_i
print("Количество банок для обмена: ")
m = gets.chomp().to_i
banki(n, m)
