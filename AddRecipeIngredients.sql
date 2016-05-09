use dainuiconnectionstring;
go
 
 /*
insert into recipeingredients (recipeingredients_id,ingredient_id,number)
values((select max(recipe_ingredient_id) from recipes),(select max(ingredient_id)
from ingredients),1);

DECLARE @what nvarchar(50) ='%Read%';

select * from recipes 
where name like(@what);

select * from ingredients
where shortdescription like(@what);

insert into recipeingredients (recipeingredients_id,ingredient_id,number)
values(66,108,1);

*/