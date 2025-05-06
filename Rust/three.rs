use std::io;
fn reverse(mut x: i32) -> i32 {
    let negative = x < 0;
    if negative {
        x = -x;
    }
    let mut rev = 0;
    while x > 0 {
        rev = rev * 10 + x % 10;
        x /= 10;
    }
    if negative { -rev } else { rev }
}
fn read_int(prompt: &str) -> i32 {
    println!("{}", prompt);
    let mut input = String::new();
    io::stdin().read_line(&mut input).expect("Ошибка ввода");
    input.trim().parse::<i32>().expect("Введите целое число")
}
fn main() {
    let n = read_int("Введите количество чисел:");
    for _ in 0..n {
        let num = read_int("Введите число:");
        println!("{}", reverse(num));
    }
}
