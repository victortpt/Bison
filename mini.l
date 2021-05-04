 
%{
#include <stdio.h>
#include <ctype.h>
#include "tokens.h"
int num_linea = 1;
%}

%x COMENTARIO
%x CAD

IDENTIFICADOR [A-Za-z_][A-Za-z_0-9]*
ENTERO ([0-9]+|\#[0-7]+|\#[hH][0-9a-fA-F]+)
REAL ({ENTERO}?\.{ENTERO})
MANTISA (({ENTERO}|{REAL})exp[\+\-]?({ENTERO})) 
RUTA (\|({DIRECTORIO}|{FICHERO})\|)
FICHERO ([^\n\|\/]+\.[^\n\|\/]+)
DIRECTORIO ((\/)?([^\n\|\/]+\/)+{FICHERO})
DELIMITADOR (\{|\}|\(|\)|\:|\;|\,)
COM_LINEA (\#\#.*)
CAR_NVAL [^\n\'\#]
CAR_ESCAP (\#[\'\#abfnrtv])
CAR_OCTAL (\#[0-7]{1,2}|\#[1][0-7]{2})
CAR_HEXA (\#[hH][0-7]?[0-9A-Fa-f])
CARACTER (\'({CAR_NVAL}|{CAR_ESCAP}|{CAR_OCTAL}|{CAR_HEXA})\') 
ESCAPES	             \ |\n|\t|\v|\r


%% 

\n            num_linea++;

(?i:array)      {printf("linea %d, palabra reservada: %s\n", num_linea, yytext);
		return(ARRAY);}

(?i:cabecera)      {printf("linea %d, palabra reservada: %s\n", num_linea, yytext);
                   return(CABECERA);}

(?i:cada)      {printf("linea %d, palabra reservada: %s\n", num_linea, yytext);
                return(CADA);}

(?i:cadena)      {printf("linea %d, palabra reservada: %s\n", num_linea, yytext);
                 return(CADENA);}

(?i:caracter)      {printf("linea %d, palabra reservada: %s\n", num_linea, yytext);
                   return(CARACTER);}

(?i:conjunto)      {printf("linea %d, palabra reservada: %s\n", num_linea, yytext);
                   return(CONJUNTO);}

(?i:constantes)      {printf("linea %d, palabra reservada: %s\n", num_linea, yytext);
		     return(CONSTANTES);}

(?i:continuar)      {printf("linea %d, palabra reservada: %s\n", num_linea, yytext);
                    return(CONTINUAR);}

(?i:de)      {printf("linea %d, palabra reservada: %s\n", num_linea, yytext);
             return(DE);}

(?i:defecto)      {printf("linea %d, palabra reservada: %s\n", num_linea, yytext);
                  return(DEFECTO);}

(?i:devolver)      {printf("linea %d, palabra reservada: %s\n", num_linea, yytext);
                   return(DEVOLVER);}

(?i:ejecuta)      {printf("linea %d, palabra reservada: %s\n", num_linea, yytext);
                  return(EJECUTA);}

(?i:encambio)      {printf("linea %d, palabra reservada: %s\n", num_linea, yytext);
                   return(ENCAMBIO);}

(?i:entero)      {printf("linea %d, palabra reservada: %s\n", num_linea, yytext);
                 return(ENTERO);}

(?i:es)      {printf("linea %d, palabra reservada: %s\n", num_linea, yytext);
             return(ES);}

(?i:escape)      {printf("linea %d, palabra reservada: %s\n", num_linea, yytext);
                 return(ESCAPE);}

(?i:estructura)      {printf("linea %d, palabra reservada: %s\n", num_linea, yytext);
                     return(ESTRUCTURA);}

(?i:etiqueta)      {printf("linea %d, palabra reservada: %s\n", num_linea, yytext);
                   return(ETIQUETA);}

(?i:excepcion)      {printf("linea %d, palabra reservada: %s\n", num_linea, yytext);
                    return(EXCEPCION);}

(?i:fichero)      {printf("linea %d, palabra reservada: %s\n", num_linea, yytext);
                  return(FICHERO);}

(?i:fin)      {printf("linea %d, palabra reservada: %s\n", num_linea, yytext);
              return(FIN);}

(?i:funcion)      {printf("linea %d, palabra reservada: %s\n", num_linea, yytext);
                  return(FUNCION);}

(?i:hacer)      {printf("linea %d, palabra reservada: %s\n", num_linea, yytext);
                return(HACER);}

(?i:hash)      {printf("linea %d, palabra reservada: %s\n", num_linea, yytext);
               return(HASH);}

(?i:lanza)      {printf("linea %d, palabra reservada: %s\n", num_linea, yytext);
                return(LANZA);}

(?i:mientras)      {printf("linea %d, palabra reservada: %s\n", num_linea, yytext);
                   return(MIENTRAS);}

(?i:nada)      {printf("linea %d, palabra reservada: %s\n", num_linea, yytext);
               return(NADA);}

(?i:otra)      {printf("linea %d, palabra reservada: %s\n", num_linea, yytext);
               return(OTRA);}

(?i:para)      {printf("linea %d, palabra reservada: %s\n", num_linea, yytext);
               return(PARA);}

(?i:principio)      {printf("linea %d, palabra reservada: %s\n", num_linea, yytext);
                    return(PRINCIPIO);}

(?i:programa)      {printf("linea %d, palabra reservada: %s\n", num_linea, yytext);
                   return(PROGRAMA);}

(?i:real)      {printf("linea %d, palabra reservada: %s\n", num_linea, yytext);
               return(REAL);}

(?i:ref)      {printf("linea %d, palabra reservada: %s\n", num_linea, yytext);
              return(REF);}

(?i:saltar)      {printf("linea %d, palabra reservada: %s\n", num_linea, yytext);
                 return(SALTAR);}

(?i:si)      {printf("linea %d, palabra reservada: %s\n", num_linea, yytext);
             return(SI);}

(?i:sino)      {printf("linea %d, palabra reservada: %s\n", num_linea, yytext);
               return(SINO);}

(?i:tipos)      {printf("linea %d, palabra reservada: %s\n", num_linea, yytext);
                return(TIPOS);}

(?i:union)      {printf("linea %d, palabra reservada: %s\n", num_linea, yytext);
                return(UNION);}

(?i:variables)      {printf("linea %d, palabra reservada: %s\n", num_linea, yytext);
                    return(VARIABLES);}

{COM_LINEA}	{printf("linea %d, comentario de linea: %s\n", num_linea, yytext);}

"#-"			{BEGIN(COMENTARIO);printf("linea %d, comentario multilinea: %s", num_linea, yytext);}
<COMENTARIO>\n		{printf("%s",yytext);num_linea++;}
<COMENTARIO>.		{printf("%s",yytext);}
<COMENTARIO>"-#"	{BEGIN 0;printf("%s\n",yytext);}

{DELIMITADOR}	{printf("linea %d, delimitador: %s\n", num_linea, yytext);
		return(yytext[0]);}

[\+\-\*\/\%]   {printf("linea %d, operador aritmetico: %s\n", num_linea, yytext);
		return(yytext[0]);}

(\*\*)	{printf("linea %d, operador aritmetico: %s\n", num_linea, yytext); 
        return(POTENCIA);}


(\<\-)   {printf("linea %d, operador de bits: %s\n", num_linea, yytext);
	 return(FLECHA_IZDA);}

(\-\>)   {printf("linea %d, operador de bits: %s\n", num_linea, yytext); 
         return(FLECHA_DCHA);}

[\&\|\@\~]   {printf("linea %d, operador de bits: %s\n", num_linea, yytext); 
             return(yytext[0]);}

[\<\>]   {printf("linea %d, operador relacional: %s\n", num_linea, yytext);
	 return(yytext[0]);}

(\=\<)   {printf("linea %d, operador relacional: %s\n", num_linea, yytext); 
         return(LE);}

(\=\>)   {printf("linea %d, operador relacional: %s\n", num_linea, yytext);
         return(GE);}

(\=\=)   {printf("linea %d, operador relacional: %s\n", num_linea, yytext);
         return(EQ);}

(\!\=)   {printf("linea %d, operador relacional: %s\n", num_linea, yytext);
         return(NEQ);}

(\!)   {printf("linea %d, operador logico: %s\n", num_linea, yytext);
	return(yytext[0]);}

(\&\&)   {printf("linea %d, operador logico: %s\n", num_linea, yytext); 
	 return(AND);}

(\|\|)   {printf("linea %d, operador logico: %s\n", num_linea, yytext); 
	 return(OR);}

(\=)   {printf("linea %d, operador de asignacion: %s\n", num_linea, yytext);
	return(yytext[0]);}

(\=\+)   {printf("linea %d, operador de asignacion: %s\n", num_linea, yytext);
	 return(SUMA_ASIG);}

(\=\-)   {printf("linea %d, operador de asignacion: %s\n", num_linea, yytext);
         return(RESTA_ASIG);}

(\=\*)   {printf("linea %d, operador de asignacion: %s\n", num_linea, yytext);
         return(MULT_ASIG);}

(\=\/)   {printf("linea %d, operador de asignacion: %s\n", num_linea, yytext);
         return(DIV_ASIG);}

(\=\%)   {printf("linea %d, operador de asignacion: %s\n", num_linea, yytext);
         return(MOD_ASIG);}

(\=\*\*)   {printf("linea %d, operador de asignacion: %s\n", num_linea, yytext);
           return(POT_ASIG);}

(\=\<\-)   {printf("linea %d, operador de asignacion: %s\n", num_linea, yytext);
           return(FI_ASIG);}

(\=\-\>)   {printf("linea %d, operador de asignacion: %s\n", num_linea, yytext);
           return(FD_ASIG);}

(\=\&)   {printf("linea %d, operador de asignacion: %s\n", num_linea, yytext);
         return(AND_ASIG);}

(\=\@)   {printf("linea %d, operador de asignacion: %s\n", num_linea, yytext);
         return(XOR_ASIG);}

(\=\|)   {printf("linea %d, operador de asignacion: %s\n", num_linea, yytext);
         return(OR_ASIG);}

(tamano)   {printf("linea %d, operador de acceso a memoria: %s\n", num_linea, yytext);
	   return(TAMANO);}

[\.\[\]\^\\]   {printf("linea %d, operador de acceso a memoria: %s\n", num_linea, yytext); 
               return(yytext[0]);}

(\^\.)   {printf("linea %d, operador de acceso a memoria: %s\n", num_linea, yytext); 
         return(INDIRECCION);}

{RUTA}      {printf("linea %d, ruta: %s\n", num_linea, yytext);
            return(RUTA);}


"'"		  {BEGIN CAD;printf("linea %d, cadena: %s", num_linea, yytext);}
<CAD>(\#\n)	  {printf("%s",yytext);num_linea++;}
<CAD>({CAR_ESCAP}|{CAR_OCTAL}|{CAR_HEXA}|{CAR_NVAL})  {printf("%s", yytext);}
<CAD>(\#\-)       {printf("%s", yytext);}
<CAD>(\-\#)       {printf("%s", yytext);}
<CAD>"'"          {BEGIN INITIAL;printf("%s\n",yytext);return(CTC_CADENA);}

{CARACTER}      {printf("linea %d, caracter: %s\n", num_linea, yytext);
                return(CTC_CARACTER);}


({REAL}|{MANTISA})  {printf("linea %d, constante real: %s\n", num_linea, yytext);
		    return(CTC_REAL);}

{ENTERO}        {printf("linea %d, constante entera: %s\n", num_linea, yytext);
                return(CTC_ENTERA);}


{IDENTIFICADOR}	{printf("linea %d, identificador: %s\n", num_linea, yytext);
		return(IDENTIFICADOR);
		}

{ESCAPES}     

.	{printf("linea %d, error: cadena no encontrada\n", num_linea);} 


%%
