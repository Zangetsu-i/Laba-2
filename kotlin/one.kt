fun main() {
    print("Введите число S: ")
    val s = readLine()!!.toInt()
    print("Введите число N: ")
    val n = readLine()!!.toInt()
    print("Введите число M: ")
    val m = readLine()!!.toInt()
    val result = ostrov(s, n, m)
    if (result == -1) {
        println("Вжить невозможно")
    } else {
        println("Минимальное количество дней: $result")
    }
}
fun ostrov(s: Int, n: Int, m: Int): Int {
    if (m > n) {
        return -1
    }
    val foodNeed = s * m
    val sundays = s / 7
    val workDays = s - sundays
    val minDays = (foodNeed + n - 1) / n
    return if (minDays > workDays) -1 else minDays
}
