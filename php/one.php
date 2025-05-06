<?php
echo 'Введите число S: ';
$S = (int)trim(fgets(STDIN));
echo 'Введите число N: ';
$N = (int)trim(fgets(STDIN));
echo 'Введите число M: ';
$M = (int)trim(fgets(STDIN));
function days($S, $N, $M){
    if ($M > $N)
    return -1;
    $total_food = $S * $M;
    $sundays = $S / 7;
    $minimal_days = ceil($total_food / $N);
    $days_work = $S - $sundays;
    if ($minimal_days > $days_work)
    return -1;
    return $minimal_days;
}
$result = days($S, $N, $M);
if($result == -1)
echo 'Выжить невозможно';
else
echo "Минимальное количество дней: $result\n";
