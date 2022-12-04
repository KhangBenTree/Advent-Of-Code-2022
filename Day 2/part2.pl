print("Start\n");

# bua A thang X
# bao B hoa Y
# keo C thua Z
open(Line, '<', 'input.txt') or die $!;

$score = 0;

while(<Line>){

    ($s1,$s2) = split(' ', $_);

    if(($s1 eq "A" && $s2 eq "Y")||($s1 eq "B" && $s2 eq "X")||($s1 eq "C" && $s2 eq "Z")){
        $score += 1;
    }elsif(($s1 eq "A" && $s2 eq "Z")||($s1 eq "B" && $s2 eq "Y")||($s1 eq "C" && $s2 eq "X")){
        $score += 2;
    }elsif(($s1 eq "A" && $s2 eq "X")||($s1 eq "B" && $s2 eq "Z")||($s1 eq "C" && $s2 eq "Y")) {
        $score += 3;
    }

    if($s2 eq "X" ) {$score += 0}
    elsif ($s2 eq "Y") {$score += 3}
    else {
        $score += 6;
    }
}

print "Score: $score";
close(FH);