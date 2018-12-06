Proc sql;
select make, model, type,invoice,horsepower
from 
SASHELP.CARS
where make = 'Audi'
and type = 'Sports'
;
quit;