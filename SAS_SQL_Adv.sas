proc sql outobs= 50;
select lowBirthWgt,married;
from sashelp.BIRTHWGT;
quit;
/**Alias name**/
proc sql;
select weight,(weight*0.5)as newweight
from sashelp.BIRTHWGT;
quit;
/**removing duplicates**/
proc sql;
select distinct weight,married
from sashelp.BIRTHWGT;
quit;
/**referring previously calculated values**/
proc sql;
select weight,(weight*0.5) as newweight,
CALCULATED newweight*0.25 as revweight
from sashelp.BIRTHWGT;
quit;
/**labelling and formatting**/
proc sql;
select weight format = 8.2
   ,married Label = "Married people"
   from sashelp.BIRTHWGT;
   quit;
/**Sorting**/
proc sql;
select age , weight,marriage
from sashelp.BIRTHWGT
Order by weight ASC,married DESC;
quit;
/**repeat calcualtion**/
proc sql;
select Name, (weight * .01)as newweight
from health
where (weight *.01)>5;
quit;
/**calculated**/
proc sql;
select Name, (weight * .01)as newweight
from health
where CALCULATED newweight > 5;
quit;
/**Multiple conditions Criteria**/
proc sql;
select weight,
case 
when weight between 0 and 50 then 'LOW'
when weight between 51 and 70 then 'MED'
when weight between 71 and 100 then 'HIGH'
else 'Very High'
end as newweight
from health;
quit;