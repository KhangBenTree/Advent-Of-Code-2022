Write-Host 'Run....!'
[string[]]$file = Get-Content input.txt
$max = 0
for($i = 1; $i -lt $file.length-1; $i++){
    for($j = 1; $j -lt $file.length-1; $j++){
        
        $left = 0
        for($o = $j-1; $o -ge 0; $o--){
            $left++
            if ($file[$i][$o] -ge $file[$i][$j]) {break}
        }

        $right = 0
        for($o = $j+1; $o -lt $file.length; $o++){
            $right++
            if ($file[$i][$o] -ge $file[$i][$j]) {break}
        }
      
        $top = 0
        for($o = $i-1; $o -ge 0; $o--){
            $top++
            if ($file[$o][$j] -ge $file[$i][$j]) {break}
        }
     
        $bot = 0
        for($o = $i+1; $o -lt $file.length; $o++){
            $bot++
            if ($file[$o][$j] -ge $file[$i][$j]) {break}
        }
        $temp = $left * $right * $top * $bot
        if ($temp -gt $max) {
            $max = $temp
        }
    } 
}
$max