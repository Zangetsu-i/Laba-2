<?php
function rev($x){
    $neg = $x < 0;
    $rev = 0;
    $x = abs($x);
    while($x > 0){
        $rev = $rev * 10 + $x % 10;
        $x = intdiv($x, 10);
    }
    return $neg ? -$rev : $rev;
}
echo 'Введите количество чисел: ';
$n = (int)trim(fgets(STDIN));
for ($i=0; $i<$n; $i++){
    echo 'Введите число: ';
    $num = (int)trim(fgets(STDIN));
    $reversed = rev($num);
    echo $reversed . PHP_EOL;
}
