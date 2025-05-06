function days(S: number, N: number, M: number): number {
  if (M > N) return -1;

  const need_food = S * M;
  const sundays = Math.floor(S / 7);
  const work_days = S - sundays;
  const minimal_days = Math.ceil(need_food / N);

  if (minimal_days > work_days) return -1;
  return minimal_days;
}

const S = parseInt(prompt("Введите число S:") || "0");
const N = parseInt(prompt("Введите число N:") || "0");
const M = parseInt(prompt("Введите число M:") || "0");

const result = days(S, N, M);

if (result === -1) {
  console.log("Выжить невозможно");
} else {
  console.log("Минимальное количество дней:", result);
}
