use std::io;
fn read_input(prompt: &str) -> i32 {
    println!("{}", prompt);
    let mut input = String::new();
    io::stdin().read_line(&mut input).expect("Ошибка ввода");
    input.trim().parse::<i32>().expect("Введите целое число")
}
fn drink(mut n: i32, m: i32) -> (i32, i32) {
    let mut vipito = n;
    let mut step = 1;
    let mut pusto = n;
    println!("input: {}, {}", n, m);
    println!("Дано: {}", "😊".repeat(n as usize));
    println!("{} Шаг {}", step, "😞".repeat(pusto as usize));
    while pusto >= m {
        step += 1;
        let smen = pusto / m;
        pusto = pusto % m + smen;
        vipito += smen;
        println!("{} Шаг {}", step, "😊".repeat(pusto as usize));
        step += 1;
        println!("{} Шаг {}", step, "😞".repeat(pusto as usize));
    }
    println!("Output: {}, {}", vipito, step);
    (vipito, step)
}
fn main() {
    let n = read_input("Введите количество банок:");
    let m = read_input("Количество банок для обмена:");
    drink(n, m);
}
