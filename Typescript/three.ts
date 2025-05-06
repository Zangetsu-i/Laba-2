function reverse(x: number): number {
    const neg = x < 0;
    let rev = 0;
    x = Math.abs(x);
    while (x > 0) {
        rev = rev * 10 + (x % 10);
        x = Math.floor(x / 10);
    }
    return neg ? -rev : rev;
}
function main() {
    const nStr = prompt("Введите количество чисел:");
    if (nStr === null) return;
    const n = parseInt(nStr);
    if (isNaN(n)) {
        alert("Введите корректное число");
        return;
    }
    for (let i = 0; i < n; i++) {
        const numStr = prompt("Введите число:");
        if (numStr === null) return;
        const num = parseInt(numStr);
        if (isNaN(num)) {
            alert("Некорректный ввод");
            i--; // Повтор попытки
        } else {
            alert("Результат: " + reverse(num));
        }
    }
}
main();
