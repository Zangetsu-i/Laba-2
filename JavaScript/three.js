const readline = require('readline');
const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});
function reverse(x) {
    const neg = x < 0;
    let rev = 0;
    x = Math.abs(x);
    while (x > 0) {
        rev = rev * 10 + x % 10;
        x = Math.floor(x / 10);
    }
    return neg ? -rev : rev;
}
async function main() {
    const n = parseInt(await question('Введите количество чисел: '));
    for (let i = 0; i < n; i++) {
        const num = parseInt(await question('Введите число: '));
        console.log(reverse(num));
    }
    rl.close();
}
function question(prompt) {
    return new Promise(resolve => {
        rl.question(prompt, resolve);
    });
}
main();
