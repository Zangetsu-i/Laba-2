const readline = require('readline');
const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});
function days(S, N, M){
    if(M > N)
        return -1;
    const need_food = S * M;
    const sundays = Math.floor(S / 7);
    const work_days = S - sundays;
    const minimal_days = Math.ceil(need_food / N);
    if(minimal_days > work_days)
        return -1;
    return minimal_days;
}
rl.question("Введите число S: ", (S_input) => {
    const S = parseInt(S_input);
    rl.question("Введите число N: ", (N_input) => {
        const N = parseInt(N_input);
        rl.question("Введите число M: ", (M_input) => {
            const M = parseInt(M_input);
            const result = days(S, N, M);
            if (result === -1) {
                console.log("Выжить невозможно");
            } else {
                console.log("Минимальное количество дней", result);
            }
            rl.close();
        });
    });
});
