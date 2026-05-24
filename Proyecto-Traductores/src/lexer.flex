%%
%public
%class Lexer

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


%type Token

%eofval{
    return new Token(TokenConstants.TkFinal, null);
%eofval}
%%

{create} {return new Token(TokenConstants.TkCreate, yytext());}
{digit}* {return new Token(TokenConstants.TkNum, yytext());}
{True} {return new Token(TokenConstants.TkTrue, yytext());}
{False} {return new Token(TokenConstants.TkFalse, yytext());}
{letter} {return new Token(TokenConstants.TkCaracter, yytext());}
{coma} {return new Token(TokenConstants.TkComa, yytext());}
{punto} {return new Token(TokenConstants.TkPunto, yytext());}
{dospuntos} {return new Token(TokenConstants.TkDosPuntos, yytext());}
{parabre} {return new Token(TokenConstants.TkParAbre, yytext());}
{parcierra} {return new Token(TokenConstants.TkParCierra, yytext());}
{suma} {return new Token(TokenConstants.TkSuma, yytext());}
{resta} {return new Token(TokenConstants.TkResta, yytext());}
{mult} {return new Token(TokenConstants.TkMult, yytext());}
{div} {return new Token(TokenConstants.TkDiv, yytext());}
{mod} {return new Token(TokenConstants.TkMod, yytext());}
{disyuncion} {return new Token(TokenConstants.TkDisyuncion, yytext());}
{conjuncion} {return new Token(TokenConstants.TkConjuncion, yytext());}
{negacion} {return new Token(TokenConstants.TkNegacion, yytext());}
{menor} {return new Token(TokenConstants.TkMenor, yytext());}
{menorigual} {return new Token(TokenConstants.TkMenorIgual, yytext());}
{mayor} {return new Token(TokenConstants.TkMayor, yytext());}
{mayorigual} {return new Token(TokenConstants.TkMayorIgual, yytext());}
{igual} {return new Token(TokenConstants.TkIgual, yytext());}

{letter}({letter}|{digit})* { return new Token(TokenConstants.TkIdent, yytext()); }

{whitespace} {/* ignorar */}