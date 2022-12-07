new File("input.txt").withReader('UTF-8') { reader ->
    def line = reader.readLine()
    int a = 4;
    def q = [line[0],line[1],line[2],line[3]] as Queue
    for (i in 4..(line.length()-1)){
        q<<line[i]
        q.poll()
        if(methodName(q)) {
            println i+1
            break
        }
    }
    
}

def methodName(Queue q) { 
   for (i in 0..3){
    for (j in 0..3){
        if (q[i] == q[j] && j!=i) return false
    }
   }
   return true 
}