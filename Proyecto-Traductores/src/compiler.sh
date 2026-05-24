java -jar jflex.jar lexer.flex
javac Main.java Lexer.java
java Main Lexer

rm *.class 
rm Lexer.java