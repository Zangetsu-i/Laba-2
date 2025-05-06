func rev(x: Int) -> Int{
    let negative = x < 0
    var num = abs(x)
    var rev = 0
    while num > 0{
    rev = rev * 10 + num % 10
    num = num / 10
    }
    return negative ? -rev : rev
}
print("Введите количество чисел: ", terminator: "")
let n = Int(readLine()!)!
for _ in 0..<n {
    print("Введите число: ", terminator: "")
    let num = Int(readLine()!)!
    print(rev(x: num))
}
