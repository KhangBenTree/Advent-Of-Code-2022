new File("input.txt").withReader('UTF-8') { reader ->
    def line = reader.readLine()
    int a = 14;
    def q = [line[0],line[1],line[2],line[3],line[4],line[5],line[6],line[7],line[8],line[9],line[10],line[11],line[12],line[13]] as Queue
    for (i in 14..(line.length()-1)){
        q<<line[i]
        q.poll()
        if(methodName(q)) {
            println i+1
            break
        }
    }
    
}

def methodName(Queue q) { 
   for (i in 0..13){
    for (j in 0..13){
        if (q[i] == q[j] && j!=i) return false
    }
   }
   return true 
}