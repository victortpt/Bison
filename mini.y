 
%{

  #include <stdio.h>
  extern FILE *yyin;
  extern int yylex();

  #define YYDEBUG 1

  int yylex(void);
  int yyerror(char *);

%}

%token AND AND_ASIG ARRAY CABECERA CADA CADENA CARACTER CONJUNTO CONSTANTES CONTINUAR CTC_CADENA
%token CTC_CARACTER CTC_ENTERA CTC_REAL DE DEFECTO DIV_ASIG DEVOLVER EJECUTA ENCAMBIO ENTERO EQ ES
%token ESCAPE ESTRUCTURA ETIQUETA EXCEPCION FD_ASIG FI_ASIG FLECHA_DCHA FLECHA_IZDA FICHERO FIN
%token FUNCION HACER HASH GE IDENTIFICADOR INDIRECCION LANZA LE MIENTRAS MOD_ASIG MULT_ASIG NADA NEQ
%token OR OTRA OR_ASIG PARA POT_ASIG PRINCIPIO PROGRAMA POTENCIA REAL REF RESTA_ASIG RUTA SALTAR SI
%token SINO SUMA_ASIG TAMANO TIPOS UNION VARIABLES XOR_ASIG 

%%

/************/
/* programa */
/************/

/************************/
/* declaracion de tipos */
/************************/


/*****************************/
/* declaracion de constantes */
/*****************************/


/****************************/
/* declaracion de variables */
/****************************/


/****************************/
/* declaracion de funciones */
/****************************/


/*****************/
/* instrucciones */
/*****************/


/***************/
/* expresiones */
/***************/

expresion_constante  
	: CTC_ENTERA                 	{printf("ctc = CTC_ENTERA\n");}                              
	| CTC_REAL 						{printf("ctc = CTC_REAL\n");}
	| CTC_CADENA 					{printf("ctc = CTC_CADENA\n");}
	| CTC_CARACTER 					{printf("ctc = CTC_CARACTER\n");}
	;
	


    
%%

int yyerror(char *s) {
  fflush(stdout);
  printf("*****************, %s\n",s);
  }

int yywrap() {
  return(1);
  }

int main(int argc, char *argv[]) {

  yydebug = 0;

  if (argc < 2) {
    printf("Uso: ./mini NombreArchivo\n");
    }
  else {
    yyin = fopen(argv[1],"r");
    yyparse();
    }
  }
