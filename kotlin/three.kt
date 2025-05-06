fun main (){
    print("Введите количество чисел:")
    val n = readLine()!!.toInt()
    for (i in 1..n){
        print("Введите число: ")
        val num = readLine()!!.toInt()
        println("Обратное число: ${reverse(num)}")
    }
}
fun reverse(x:Int):Int{
    val neg = x < 0
    var num = if (neg) -x else x
    var rev = 0
    while (num > 0){
    rev = (rev * 10 + num % 10)
    num = (num / 10)
    }
    return if (neg) -rev else rev
}
