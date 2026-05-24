import java.io.*;
import java.nio.file.Files;
import java.nio.file.Path;

public class Main {

	
	public static void main(String[] args) throws Exception {

		//ruta del archivo que voy a leer 
		String ruta_archivo = "test.txt";
		String contenido_archivo = "";
		
		try {
			
			contenido_archivo = Files.readString(Path.of(ruta_archivo));
			
		} catch (IOException e) {
			System.err.println("Ocurrio un error al leer el archivo: "+ e.getMessage());
		}
		String texto = contenido_archivo;
		Reader strRdr = new StringReader(texto);
		Lexer lexer = new Lexer(strRdr);
		Token tk = lexer.yylex();

		System.out.println(tk);
	}

}
