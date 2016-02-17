import java.util.*;

public class Tornado {

	public Tornado(){
		prompt();
	}


	public static void main(String... args){
		new Tornado();
	}


	public String shift(String original){
		StringBuilder builder = new StringBuilder(original);
		return builder.delete(0, 1).append(original.toCharArray()[0]).toString();
	}

	public void prompt(){
		Scanner scan = new Scanner(System.in);
		System.out.print("Enter some text: ");
		String text = scan.nextLine();
		if(!(text.length() > 1)){
			System.out.println("Next time input some text!");
			prompt();
		}
		if(text.toCharArray()[text.length() - 1] != ' '){
			text += " ";
		}
		System.out.print("Enter line amount: ");
		try{	
			int lineAmount = scan.nextInt();
			// print original
			System.out.println(text);
			for(int i = 0; i < lineAmount; i++){
				text = shift(text);
				System.out.println(text);
			}
		} catch(Exception e) {
			System.out.println("Invalid! Try Again...");
			prompt();
		}
	} 
}
