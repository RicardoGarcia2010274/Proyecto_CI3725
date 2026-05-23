%%
%public
%class Lexer
%type Token
%function next_token

digit = [0-9]
letter = [a-zA-Z]
whitespace = [ \t\r]

%type TkIdent

%eofval{
    return new Token(TokenConstants.TkFinal, null);
%eofval}

%%

{letter}({letter}|{digit})* {return new Token(TokenConstants.TkIdent, yytext());}
