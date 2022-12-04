puts "start"

max = [0,0]
File.foreach("input.txt") { 
    |line|
    if line != "\n"
        max[1] = max[1] + line.to_i
    else   
        if max[1] >= max[0]
            max[0] = max[1]
        end
        max[1] = 0
    end
}
puts max[0]

# file_data = File.read("user.txt").split(" ")
# puts  file_data