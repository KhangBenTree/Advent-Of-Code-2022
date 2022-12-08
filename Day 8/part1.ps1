Write-Host 'Run....!'
[string[]]$file = Get-Content input.txt
$sum = $file.length*4-4
for($i = 1; $i -lt $file.length-1; $i++){
    for($j = 1; $j -lt $file.length-1; $j++){
        
        $left = $true
        for($o = 0; $o -lt $j; $o++){
            if ($file[$i][$o] -ge $file[$i][$j]) {$left =  $false}
        }

        $right = $true
        for($o = $j+1; $o -lt $file.length; $o++){
            if ($file[$i][$o] -ge $file[$i][$j]) {$right =  $false}
        }
      
        $top = $true
        for($o = 0; $o -lt $i; $o++){
            if ($file[$o][$j] -ge $file[$i][$j]) {$top =  $false}
        }
     
        $bot = $true
        for($o = $i+1; $o -lt $file.length; $o++){
            if ($file[$o][$j] -ge $file[$i][$j]) {$bot =  $false}
        }

        if($left -or $right -or $top -or $bot) {
            $sum++
        }else{
            # Write-Host "file[$i][$j]"
        }
    } 
}
$sum