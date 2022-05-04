%{
#include<stdio.h>
int p = 0;
int s = 0;
%}

%%
"printf" {p++;}
"scanf" {s++;}
%%
int yywrap(void){
    return 1;
}
int main(){
   char filename[50];
    printf("Enter file name: ");
    scanf("%s", filename);
    yyin=fopen(filename,"r");
    yylex();
    printf("\nNumber of printfs are: %d\n", p);
    printf("Number of scanfs are: %d\n", s);
}
