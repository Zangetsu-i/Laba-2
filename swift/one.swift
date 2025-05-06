print("Введите число S: ", terminator: "")
let S = Int(readLine()!)!
print("Введите число N: ", terminator: "")
let N = Int(readLine()!)!
print("Введите число M: ", terminator: "")
let M = Int(readLine()!)!
func days(S: Int, N: Int, M: Int) -> Int{
    if M > N {
        return -1
    }
    let sundays = S / 7
    let day_work = S - sundays
    let need_food = S * M
    let min_days = (need_food + N - 1) / N
    if min_days > day_work {
        return -1
    }
    return min_days
}
let result = days(S: S, N: N, M: M)
if result == -1{
print("Выжить невозможно")
} else{
    print("Минимальное количество дней: \(result)")
}
