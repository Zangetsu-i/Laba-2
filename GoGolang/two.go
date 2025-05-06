package main
import "fmt"
func main(){
	var N, M int
	fmt.Print("Введите количество банок: ")
	fmt.Scan(&N)
	fmt.Print("Количество банок для обмена: ")
	fmt.Scan(&M)
	banki(N, M)
}
func banki(N, M int) (int, int){
	pusto := N
	total := N
	step := 1
	fmt.Println("Input: ", N, M)
	fmt.Print("Дано: ")
	printEmoji("😊", pusto)
	fmt.Print(step, " Шаг ")
	printEmoji("😊", pusto)
	for pusto >= M {
		step ++
		exchange := pusto / M
		pusto = exchange + pusto % M
		total += exchange
		fmt.Print(step, " Шаг ")
		printEmoji("😊", pusto)
		step ++
		fmt.Print(step, " Шаг ")
		printEmoji("😞", pusto)
	}
	fmt.Println("Output: ", total, step)
	return total, step
}
func printEmoji(symbol string, count int) {
	for i := 0; i < count; i++ {
		fmt.Print(symbol)
	}
	fmt.Println()
}
