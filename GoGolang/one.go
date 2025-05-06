package main
import "fmt"
func main(){
	var S, N, M int
	fmt.Print("Введите значение S: ")
	fmt.Scan(&S)
	fmt.Print("Введите значение N: ")
	fmt.Scan(&N)
	fmt.Print("Введите значение M: ")
	fmt.Scan(&M)
	result := days(S, N, M)
	if result == -1 {
		println("Выжить невозможно")
	} else {
		println("Минимальное количество дней: ", result)
	}
}
func days(S, N, M int) int{
	if M > N {
		return -1
	}
	sundays := S / 7
	need_food := S * M
	shop_work := S - sundays
	minimal := (need_food + N - 1) / N
	if minimal > shop_work{
		return -1 
	}
	return minimal
}
