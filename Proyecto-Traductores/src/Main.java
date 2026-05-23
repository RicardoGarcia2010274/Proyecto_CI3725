import java.io.FileReader;
import java.io.BufferedReader;

public class Main {

	public static void main(String[] args) throws Exception {
		String test = "A123";
		Reader strRdr = new StringReader(test);
		Lexer lever = new Lexer(strRdr);
		Token tk = lexer.yylex();
	}

}
