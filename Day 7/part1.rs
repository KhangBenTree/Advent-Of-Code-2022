use std::fs::File;
use std::io::{self, prelude::*, BufReader};


fn main() -> io::Result<()> {
    let file = File::open("input.txt")?;
    let reader = BufReader::new(file);
 
    let mut _sum = 0;
    let mut _scale = 1.0;
    for  line in reader.lines() {
        let split = line?.split_whitespace();
        let _words: Vec<&str> = split.collect();
        println!("{}",_words[0]);
        //i die here :)) 
    }
    println!("{}", _sum);

    Ok(())
}