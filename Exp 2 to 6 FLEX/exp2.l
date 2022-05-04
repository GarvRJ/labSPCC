%{
int count_v=0,count_c=0;
%}
%%
[a|e|i|o|u|A|E|I|O|U] {count_v++;}
[a-zA-Z] {count_c++;}
. ;
%%
int yywrap(void) {
return 1;
}
int main(int argc,char *argv[])
{
FILE *fp;
fp=fopen(argv[1],"r");
yyin=fp;
yylex();
fclose(fp);
printf("No of Consonants = %d,No of Vowels = %d",count_c,count_v);
return 0;
}