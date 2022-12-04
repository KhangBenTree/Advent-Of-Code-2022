print("Start\n");

# bua A X
# bao B Y
# keo C Z
open(Line, '<', 'input.txt') or die $!;

$score = 0;

while(<Line>){

    ($s1,$s2) = split(' ', $_);
    if(($s1 eq "A" && $s2 eq "X")||($s1 eq "B" && $s2 eq "Y")||($s1 eq "C" && $s2 eq "Z")){
        $score += 3;
    }elsif(($s1 eq "A" && $s2 ne "Y")||($s1 eq "B" && $s2 ne "Z")||($s1 eq "C" && $s2 ne "X")){
        $score += 0;
    }else {$score += 6;}

    if($s2 eq "X" ) {$score += 1}
    elsif ($s2 eq "Y") {$score += 2}
    else {
        $score += 3;
    }
}

print "Score: $score";
close(FH);