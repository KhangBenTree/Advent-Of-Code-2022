function mysplit (inputstr, sep)
    if sep == nil then
       sep = "%s"
    end
    local t={}
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
       table.insert(t, str)
    end
    return t
end
 

file = io.open("input.txt","r")

stack = {}
high_stack = {}
num_arr = file:read()
for i = 1,num_arr ,1
do
    s = file:read()
    stack[i-1] = {}
    high_stack[i-1] = string.len(s) 
    for inx = 1,high_stack[i-1],1 do
        stack[i-1][inx-1] = s:sub(inx, inx)
    end 
end

file:read()
local write = io.write
while(true)
do 
    line = file:read()
    if(line == nil) then 
        break 
    end
    t =  mysplit(line)
    for i = 0,t[2]-1,1 do
        stack[t[6]-1][high_stack[t[6]-1]+i] = stack[t[4]-1][high_stack[t[4]-1]-i-1]
        stack[t[4]-1][high_stack[t[4]-1]-i-1] = nil 
    end
    high_stack[t[4]-1] = high_stack[t[4]-1] - t[2]
    high_stack[t[6]-1] = high_stack[t[6]-1] + t[2]
    

end

for i = 1,num_arr ,1
do
    print(stack[i-1][high_stack[i-1]-1]) 
end