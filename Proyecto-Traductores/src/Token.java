
public class Token {
    private TokenConstants tipo;
    private String lexema;
    private Integer fila; 
    private Integer columna;
    public Token(TokenConstants tipo, String lexema, Integer fila, Integer columna){
        this.tipo = tipo;
        this.lexema = lexema;
        this.fila = fila;
        this.columna = columna;
    } 

    @Override
    public String toString(){
        String ubicacion = " "+fila+" "+ columna + "";
        //esta serie de ifs lo que hacen es controlar que tipo de token recibo, definiendo su comportamiento
        if (this.tipo == TokenConstants.TkIdent || this.tipo == TokenConstants.TkNum ||this.tipo == TokenConstants.TkCaracter){
            return ""+tipo + "(" + lexema + ")" + ubicacion;
        }  else if (
            this.tipo == TokenConstants.TkTrue || 
            this.tipo == TokenConstants.TkFalse ||
            this.tipo == TokenConstants.TkComa||
            this.tipo == TokenConstants.TkPunto||
            this.tipo == TokenConstants.TkDosPuntos||
            this.tipo == TokenConstants.TkParAbre||
            this.tipo == TokenConstants.TkParCierra||
            this.tipo == TokenConstants.TkSuma||
            this.tipo == TokenConstants.TkResta||
            this.tipo == TokenConstants.TkMult||
            this.tipo == TokenConstants.TkDiv||
            this.tipo == TokenConstants.TkMod||
            this.tipo == TokenConstants.TkConjuncion||
            this.tipo == TokenConstants.TkNegacion||
            this.tipo == TokenConstants.TkDisyuncion||
            this.tipo == TokenConstants.TkMayor||
            this.tipo == TokenConstants.TkMenor||
            this.tipo == TokenConstants.TkMayorIgual||
            this.tipo == TokenConstants.TkMenorIgual||
            this.tipo == TokenConstants.TkIgual ||
            this.tipo == TokenConstants.TkWhile ||
            this.tipo == TokenConstants.TkBool||
            this.tipo == TokenConstants.TkIf ||
            this.tipo == TokenConstants.TkElse||
            this.tipo == TokenConstants.TkCreate
            )  {
            return ""+tipo+ ubicacion;
        } 
        return ""+tipo;
    }
}
