/*
USE dainuiconnectionstring;
use  [C:\USERS\THOMA_000\DOCUMENTS\DAILYNUTRITION2012.MDF]
GO

SELECT * 
FROM dbo.ingredients
 WHERE 
-- upc='078742433530'
 longdescription LIKE('%ernel %') 
 -- and 
 maker like('%ell%'); 
 maker like('%elfonte%'); 
 maker like('%YoCrunch%'); 
--   maker like('%yardee%'); 
  -- maker like('%lanters  %'); 
--maker like('%irds  %'); 
 -- maker like('%ealthy %'); 
 --maker like('%ed%'); 
 --maker like('%ampbel%'); 
--maker like('%est Choice%'); 
 --maker like('%Valley Fresh%'); 
 --maker like('%Great Value%');
 upc like('%15780')

update ingredients 
set   corn='yes',egg='n',
  onion='n',garlic='n',[Sodium Nitrite]='n' 
where   ingredient_id=219;

select count(*) from ingredients
*/


INSERT INTO Ingredients (  
       [ShortDescription]
      ,[LongDescription]
      ,[ServingSize]
      ,[ServingSizeUnit]
      ,[Calories]
      ,[CalFromFat]
      ,[TotalFat]
      ,[SaturatedFat]
      ,[TransFat]
      ,[PolyUnsatFat]
      ,[MonounsatFat]
      ,[Cholesterol]
      ,[Sodium]
      ,[TotalCarbohydrates]
      ,[Protein]
      ,[Potassium]
      ,[DietaryFiber]
      ,[Sugars]
      ,[VitaminA]
      ,[VitaminC]
      ,[Calcium]
      ,[Iron]
      ,[FolicAcid]
      ,[upc]
      ,[servingspercontainer]
      ,[Egg]
      ,[maker]
      ,[Nuts]
      ,[Milk]
      ,[Wheat]
      ,[Soy]
	  ,[Category]
	  ,[Corn]
	  ,[Onion] 
	  ,[Garlic],
	  [Sodium Nitrite]
	  )
values(  
       'Reese"s Puffs Cereal- with 1/2 cup skim milk' -- [ShortDescription]
      ,'Reese"s Puffs Cereal - with 1/2 cup skim milk'    -- [LongDescription]
      ,0.75   -- [ServingSize]
      ,4     --[ServingSizeUnit]
      ,160    -- [Calories]
      ,30   -- [CalFromFat]
      ,3      -- [TotalFat]
      ,0.5       -- [SaturatedFat]
      ,0        -- [TransFat]
      ,1   -- [PolyUnsatFat]
      ,1.5   -- [MonounsatFat]
      ,2.99 -- [Cholesterol]
      ,205  -- [Sodium]
      ,28 -- [TotalCarbohydrates]
      ,2 -- [Protein]
      ,280  -- [Potassium]
      ,1 -- [DietaryFiber]
      ,9   -- [Sugars]
      ,15 -- [VitaminA]
      ,10  -- [VitaminC]
      ,25    -- [Calcium]
      ,25                      -- [Iron]
      ,25                          -- [FolicAcid]
      ,'016000275669'             --[upc]
      ,17                        --[servingspercontainer]
      ,'n'                               --[Egg]
      ,'General Mills'                       --[maker]
      ,'y'                              --[Nuts]
      ,'y'      --[Milk]
      ,'m'      --[Wheat]
      ,'n'      --[Soy] 
	  ,'cereal'  -- Category
	  ,'starchsyr'  -- Corn
	  ,'n'   -- Onion
	  ,'n'   -- Garlic
	  ,'n' -- Sodium Nitrite
	  );
 