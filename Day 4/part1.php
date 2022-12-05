<?php
$sum = 0;
$myfile = fopen("input.txt", "r") or die("Unable to open file!");
while(!feof($myfile)) {
    $tm = explode(",",fgets($myfile)) ;
    $s1 = explode("-",$tm[0]);
    $s2 = explode("-",$tm[1]);
    if ($s1[0] >= $s2[0] && $s1[1] <= $s2[1] ) $sum++;
    else if ($s1[0] <= $s2[0] && $s1[1] >= $s2[1] ) $sum++;
}
echo $sum;
fclose($myfile);
?>