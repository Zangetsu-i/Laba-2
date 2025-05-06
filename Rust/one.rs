use std::io;
fn days(s: i32, n: i32, m: i32) -> i32 {
    if m > n {
        return -1;
    }
    let sundays = s / 7;
    let food_need = s * m;
    let shop_work = s - sundays;
    let min_days = (food_need + n - 1) / n;
    if min_days > shop_work {
        return -1;
    }
    min_days
}
fn read_input(prompt: &str) -> i32 {
    println!("{}", prompt);
    let mut input = String::new();
    io::stdin().read_line(&mut input).expect("Ошибка ввода");
    input.trim().parse::<i32>().expect("Введите целое число")
}
fn main() {
    let s = read_input("Введите число S:");
    let n = read_input("Введите число N:");
    let m = read_input("Введите число M:");

    let result = days(s, n, m);
    if result == -1 {
        println!("Выжить невозможно");
    } else {
        println!("Минимальное количество дней: {}", result);
    }
}
