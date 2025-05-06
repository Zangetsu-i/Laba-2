<?php
echo 'Введите количество банок: ';
$N = (int)trim(fgets(STDIN));
echo 'Количество банок для обмена: ';
$M = (int)trim(fgets(STDIN));
function banki($N, $M){
    $step = 1;
    $pusto = $N;
    $total = $N;
    echo "Input: $N, $M\n";
    echo "Дано: " . str_repeat("😊", $N) . PHP_EOL;
    echo "$step Шаг " . str_repeat("😞", $pusto) . PHP_EOL;
    while ($pusto >= $M) {
        $step ++;
        $exchange = intdiv($pusto, $M);
        $pusto = $exchange + $pusto % $M;
        $total += $exchange;
        echo "$step Шаг " . str_repeat("😊", $pusto) . PHP_EOL;
        $step ++;
        echo "$step Шаг " . str_repeat("😞", $pusto) . PHP_EOL;
    }
    echo "Output: $total, $step\n";
    return($total . $step);
}
banki($N, $M);
