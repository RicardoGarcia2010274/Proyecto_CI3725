%%
%public
%class Lexer

digit = [0 - 9]
letter = [a-zA-Z]
whitespace = [ \t\r]

%type TkIdent

%eofval{
    return new Token(TokenConstant.TkFinal, null)
%eofval}

{letter}({letter}|{digit})* return {new Token(TokenConstants.TkIdent, yytext();)}
