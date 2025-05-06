const readline = require('readline');
const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});
function banki(N, M) {
    let step = 1;
    let pusto = N;
    let total = N;
    console.log(`Input: ${N}, ${M}`);
    console.log("Дано: " + "😊".repeat(N));
    console.log(`${step} Шаг ${"😞".repeat(pusto)}`);
    while (pusto >= M) {
        step++;
        let exchange = Math.floor(pusto / M);
        pusto = exchange + (pusto % M);
        total += exchange;
        console.log(`${step} Шаг ${"😊".repeat(pusto)}`);
        step++;
        console.log(`${step} Шаг ${"😞".repeat(pusto)}`);
    }
    console.log(`Output: ${total}, ${step}`);
    return [total, step];
}
rl.question("Введите количество банок: ", (N_input) => {
    const N = parseInt(N_input);
    rl.question("Количество банок для обмена: ", (M_input) => {
        const M = parseInt(M_input);
        banki(N, M);
        rl.close();
    });
});
