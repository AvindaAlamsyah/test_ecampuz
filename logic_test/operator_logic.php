<?php
function pembagian($angka1, $angka2)
{
    $a = $angka1;
    $b = $angka2;
    $hasil = 0;
    while ($a >= $b) {
        $a = $a - $b;
        $hasil += 1;
    }

    return $hasil;
}

$hasil1 = pembagian(7, 2);
$hasil2 = pembagian(8, 4);
echo "7 : 2 = $hasil1<br/>";
echo "8 : 4 = $hasil2";
