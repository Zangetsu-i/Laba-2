func printEmojis(_ emoji: String, count: Int) {
    for _ in 0..<count {
        print(emoji, terminator: "")
    }
    print()
}
func banki(N: Int, M: Int) -> (Int, Int) {
    var pusto = N
    var step = 1
    var total = N
    print("Input: \(N), \(M)")
    print("Дано: ", terminator: "")
    printEmojis("😊", count: pusto)
    print("\(step) Шаг ", terminator: "")
    printEmojis("😊", count: pusto)
    while pusto >= M {
        step += 1
        let exchange = pusto / M
        pusto = exchange + pusto % M
        total += exchange

        print("\(step) Шаг ", terminator: "")
        printEmojis("😊", count: pusto)

        step += 1
        print("\(step) Шаг ", terminator: "")
        printEmojis("😞", count: pusto)
    }
    print("Output: \(total), \(step)")
    return (total, step)
}
print("Введите количество банок: ", terminator: "")
let N = Int(readLine()!)!
print("Количество банок для обмена: ", terminator: "")
let M = Int(readLine()!)!
_ = banki(N: N, M: M)
