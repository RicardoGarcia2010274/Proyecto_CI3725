%%
%public
%class Lexer
%line
%column

digit = [0-9]
letter = [a-zA-Z]
whitespace = [ \t\r]
True = true
False = false
create = "create"
coma = ","
punto = "."
dospuntos= ":" 
parabre = "("
parcierra = ")"
suma = "+"
resta = "-"
mult ="*"
div = "/"
mod ="%"
conjuncion ="/\\"
disyuncion ="\\/"
negacion ="~"
menor = "<"
menorigual = "<="
mayor = ">"
mayorigual = ">="
igual = "="
while = "while"
bool = "boole"
if = "if"
else = "else"


%type Token

%eofval{
    return new Token(TokenConstants.TkFinal, null,  yyline, yycolumn);
%eofval}
%%

{create} {return new Token(TokenConstants.TkCreate, yytext(), yyline, yycolumn);}
{digit}* {return new Token(TokenConstants.TkNum, yytext(), yyline, yycolumn);}
{True} {return new Token(TokenConstants.TkTrue, yytext(), yyline, yycolumn);}
{False} {return new Token(TokenConstants.TkFalse, yytext(), yyline, yycolumn);}
{letter} {return new Token(TokenConstants.TkCaracter, yytext(), yyline, yycolumn);}
{coma} {return new Token(TokenConstants.TkComa, yytext(), yyline, yycolumn);}
{punto} {return new Token(TokenConstants.TkPunto, yytext(),  yyline, yycolumn);}
{dospuntos} {return new Token(TokenConstants.TkDosPuntos, yytext(),  yyline, yycolumn);}
{parabre} {return new Token(TokenConstants.TkParAbre, yytext(),  yyline, yycolumn);}
{parcierra} {return new Token(TokenConstants.TkParCierra, yytext(),  yyline, yycolumn);}
{suma} {return new Token(TokenConstants.TkSuma, yytext(),  yyline, yycolumn);}
{resta} {return new Token(TokenConstants.TkResta, yytext(),  yyline, yycolumn);}
{mult} {return new Token(TokenConstants.TkMult, yytext(),  yyline, yycolumn);}
{div} {return new Token(TokenConstants.TkDiv, yytext(),  yyline, yycolumn);}
{mod} {return new Token(TokenConstants.TkMod, yytext(),  yyline, yycolumn);}
{disyuncion} {return new Token(TokenConstants.TkDisyuncion, yytext(),  yyline, yycolumn);}
{conjuncion} {return new Token(TokenConstants.TkConjuncion, yytext(),  yyline, yycolumn);}
{negacion} {return new Token(TokenConstants.TkNegacion, yytext(),  yyline, yycolumn);}
{menor} {return new Token(TokenConstants.TkMenor, yytext(),  yyline, yycolumn);}
{menorigual} {return new Token(TokenConstants.TkMenorIgual, yytext(),  yyline, yycolumn);}
{mayor} {return new Token(TokenConstants.TkMayor, yytext(),  yyline, yycolumn);}
{mayorigual} {return new Token(TokenConstants.TkMayorIgual, yytext(),  yyline, yycolumn);}
{igual} {return new Token(TokenConstants.TkIgual, yytext(),  yyline, yycolumn);}
{while} {return new Token(TokenConstants.TkWhile, yytext(),  yyline, yycolumn);}
{bool} {return new Token(TokenConstants.TkBool, yytext(),  yyline, yycolumn);}
{if} {return new Token(TokenConstants.TkIf, yytext(),  yyline, yycolumn);}
{else} {return new Token(TokenConstants.TkElse, yytext(),  yyline, yycolumn);}

{letter}({letter}|{digit})* { return new Token(TokenConstants.TkIdent, yytext(),  yyline, yycolumn); }

{whitespace} {/* ignorar */}