package org.compi2.codigo3d.parser;

import java_cup.runtime.Symbol;

//Scanner para generar C3D
%%
%{
    //Código de usuario
    

%}

%cup
%class scanner
%public
%line
%char
%column
%full

MAS				= "+"
MENOS			= "-"
MULT       		= "*"
DIV             = "/"
POT             = "^"
PAR_IZQ         = "("
PAR_DER         = ")"

IGUAL			= "=="
NOIGUAL			= "!="
MAYOR 			= ">"
MENOR 			= "<"
MAYORIGUAL		= ">="
MENORIGUAL		= "<="

AND				= "&&"
OR 				= "||"
NOT				= "!"

ID              = [A-Za-z][_0-9A-Za-z]*
ENTERO          = [0-9]+
DECIMAL         = [0-9]+"."[0-9]+

SPACE   = [\ \r\t\f\t]
ENTER   = [\ \n]

%%

 {ID}            { return new Symbol(sym.ID, yyline, yycolumn, yytext()); }
 {ENTERO}        { return new Symbol(sym.ENTERO, yyline, yycolumn, yytext()); }
 {DECIMAL}       { return new Symbol(sym.DECIMAL, yyline, yycolumn, yytext()); }
 {MAS}           { return new Symbol(sym.MAS, yyline, yycolumn, null); }
 {MENOS}	     { return new Symbol(sym.MENOS, yyline, yycolumn, null); }
 {MULT}          { return new Symbol(sym.MULT, yyline, yycolumn, null); }
 {DIV}	    	 { return new Symbol(sym.DIV, yyline, yycolumn, null); }
 {POT}	    	 { return new Symbol(sym.POT, yyline, yycolumn, null); }
 {PAR_IZQ}	     { return new Symbol(sym.PAR_IZQ, yyline, yycolumn, null); }
 {PAR_DER}	     { return new Symbol(sym.PAR_DER, yyline, yycolumn, null); }
 {MAYOR}	     { return new Symbol(sym.MAYOR, yyline, yycolumn, null); }
 {MENOR}	     { return new Symbol(sym.MENOR, yyline, yycolumn, null); }
 {MAYORIGUAL}	 { return new Symbol(sym.MAYORIGUAL, yyline, yycolumn, null); }
 {MENORIGUAL}	 { return new Symbol(sym.MENORIGUAL, yyline, yycolumn, null); }
 {IGUAL}	     { return new Symbol(sym.IGUAL, yyline, yycolumn, null); }
 {NOIGUAL}	     { return new Symbol(sym.NOIGUAL, yyline, yycolumn, null); }
 {AND}	     	 { return new Symbol(sym.AND, yyline, yycolumn, null); }
 {OR}	     	 { return new Symbol(sym.OR, yyline, yycolumn, null); }
 {NOT}	     	 { return new Symbol(sym.NOT, yyline, yycolumn, null); }
 {SPACE}     	 { /*Espacios en blanco, ignorados*/ }
 {ENTER}     	 { /*Saltos de linea, ignorados*/}

. {
        String errLex = "Error léxico, caracter irreconocible: '"+yytext()+"' en la línea: "+(yyline+1)+" y columna: "+yycolumn;
        System.err.println(errLex);
}