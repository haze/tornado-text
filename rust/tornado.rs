use std::io;


fn shift_and_print(txt: String) -> String {
	println!("{}", txt);
	let mut temp = String::from(txt);
	let char = temp.chars().nth(0).unwrap();
	temp.push(char);
	temp.remove(0);
	temp
}

fn main(){
	let mut input = String::new();
	let mut num = String::new();
	println!("Enter some text: ");
	match io::stdin().read_line(&mut input){
		Ok(_) => {
			println!("Enter line count (-1 for infinity)");
			match io::stdin().read_line(&mut num){
				Ok(_) => {
					let mut text = String::from(input.trim());
					let line_count_str = num.trim();
					match line_count_str.parse::<i32>(){
						Ok(line_count) => {
							if text.chars().last().unwrap() != ' ' {
								text.push(' ');
							}

							if line_count == -1 {
								loop {
									text = shift_and_print(text);
								}
							}

							for _ in 0..line_count {
								text = shift_and_print(text);
							}
						}
						Err(error) => {
							println!("error {}", error);
						}
					}
				}
				Err(error) => {
					println!("error {}", error);
					main();
				}
			}
		}
		Err(error) => {
			println!("error: {}", error);
			main();
		}
	}
}