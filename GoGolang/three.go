package main
import "fmt"
func main(){
	var n int
	fmt.Print("Введите количество чисел: ")
	fmt.Scan(&n)
	for i := 0; i < n; i++ {
		var num int
		fmt.Print("Введите число: ")
		fmt.Scan(&num)
		reversed := rev(num)
		fmt.Println(reversed)
	}
}
func rev(x int) int{
	neg := x < 0
	rev := 0
	if neg {
		x = -x
	}
	for x > 0 {
		rev = rev * 10 + x % 10
		x = x / 10
	}
	if neg {
		rev = -rev
	}
	return rev
}
