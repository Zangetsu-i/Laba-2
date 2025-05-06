fun main(){
    print("Введите количество банок: ")
    val n = readLine()!!.toInt()
    print("Количество банок для обмена: ")
    val m = readLine()!!.toInt()
    banki(n, m)
}
fun banki(n: Int, m: Int):Pair<Int,Int>{
    var pusto = n
    var step = 1
    var drunk = n
    println("Дано" + "😊".repeat(pusto))
    println("$step Шаг" + "😞".repeat(pusto))
    while (pusto >= m){
        step ++
        val exchange = (pusto / m)
        pusto = (exchange + pusto % m)
        drunk += exchange
        println("$step Шаг" + "😊".repeat(pusto))
        step ++
        println("$step Шаг" + "😞".repeat(pusto))
    }
    println("Output: $drunk $step")
    return Pair(drunk, step)
}
