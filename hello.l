%{
/*print("Enter Input:");*/
%}
%%
[\t ]+                   /* ignore whitespace */ ;

is |
am |
are |
were |
does |
did  |
will |
had |
go        { printf("%s: is a verb\n", yytext); }
[a-zA-Z]+ { printf("%s: is not a verb\n", yytext); }

.|\n      { ECHO; /* normal default anyway */ }
%%

int main() {
  
  printf("afads %s", "bob");

  yylex();

  return 0;
}

%%