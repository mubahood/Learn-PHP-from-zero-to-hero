<?php 

function add($a,$b){
    $x = $a + $b;
    return $x;
}

$x = 10;
$y = 25;
$ans = add($x,$y); 

echo "$x + $y = $ans<hr>";

function percentage_calc($num,$max){
    $pecentage = (($num/$max)*100);
    return $pecentage;
}

$xx = 10;
$yy = 40;
$perc = percentage_calc($xx,$yy);
echo "$xx percent of $yy is {$perc}%";