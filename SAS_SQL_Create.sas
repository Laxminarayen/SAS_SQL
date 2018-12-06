data temp;
input id $ name $ salary department $;
datalines;
1 Rick  623.5 IT
2 larry 515.2 Finance
3 harry 611   Accounts
4 shru  729   IT
5 Lax   843.2 Finance
6 aadhi 578   Accounts
7 akash 632   IT
8 sid   722.5 Operations
;
run;
proc sql;
create table employess As
select * from temp;
quit;
proc print data = temp;
title 'Temporary dataset';
run;
proc print data = employess;
title 'Proc sql Create';
run;