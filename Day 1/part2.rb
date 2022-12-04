puts "start"

max = [0,0,0,0]
File.foreach("input.txt") { 
    |line|
    if line != "\n"
        max[3] = max[3] + line.to_i
    else   
        if max[3] >= max[2]
            max[3],max[2] = max[2],max[3]
        end
        if max[2] >= max[1]
            max[1],max[2] = max[2],max[1]
        end
        if max[1] >= max[0]
            max[0],max[1] = max[1],max[0]
        end
        max[3] = 0
    end
}
puts max[0]+max[1]+max[2]