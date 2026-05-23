public class Token {
    private TokenConstants tipo;
    private String lexema;
    public Token(TokenConstants tipo, String lexema){

        this.tipo = tipo; //tipo del token, de los enumerados en TokenConstants
        this.lexema = lexema; //la cadena que reconoce el token 
    } 
}

