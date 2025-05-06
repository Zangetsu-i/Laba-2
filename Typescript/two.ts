function banki(N: number, M: number): { total: number, step: number } {
    let pusto: number = N;
    let step: number = 1;
    let total: number = N;

    console.log("Input:", N, M);
    console.log("Дано:", "😊".repeat(N));
    console.log(`${step} Шаг`, "😞".repeat(pusto));

    while (pusto >= M) {
        step++;
        const exchange: number = Math.floor(pusto / M);
        pusto = (pusto % M) + exchange;
        total += exchange;

        console.log(`${step} Шаг`, "😊".repeat(pusto));
        step++;
        console.log(`${step} Шаг`, "😞".repeat(pusto));
    }

    console.log("Output:", total, step);
    return { total, step };
}

// Ввод через prompt (только в браузере)
const N_input = prompt("Введите количество банок:");
const M_input = prompt("Количество банок для обмена:");

if (N_input !== null && M_input !== null) {
    const N: number = parseInt(N_input);
    const M: number = parseInt(M_input);

    const result = banki(N, M);
    alert(`Всего выпито банок: ${result.total}\nКоличество шагов: ${result.step}`);
}
