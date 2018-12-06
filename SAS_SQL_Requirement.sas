data temp;
input id $ name $ salary department $;
datalines;
1 Rick 623.3 IT
2 Dan 515.2 Operations
3 Michelle 611 IT
4 Ryan 729 HR
5 Gary 843.25 Finance
6 Nina 578 IT
7 Simon 632.8 Operations
8 Guru 722.5 Finance
;
run;
proc sql;
create table employess As
select * from temp;
quit;
proc sql; 
select Id as empID, name as Empname, 
department as dept,
salary*0.23 as comission
from employess;
quit;
