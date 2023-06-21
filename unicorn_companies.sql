create database Project
use Project
Select * from dbo.Unicorn_Companies

--Seperating year from date joined
select [Company]
      ,[Valuation]
      ,[Date Joined]
      ,[Industry]
      ,[City]
      ,[Country]
      ,[Continent]
      ,[Year Founded]
      ,[Funding]
      ,[Select Investors],
	  left("Date Joined",4) as Unicorn_year from dbo.Unicorn_Companies
	  


--Removing irrelevant columns 
select [Company]
      ,[Valuation]
      --[Date Joined]
      ,[Industry]
      ,[City]
      ,[Country]
      ,[Continent]
      ,[Year Founded]
      --[Funding]
      --[Select Investors]
	  ,left("Date Joined",4) as Unicorn_year from dbo.Unicorn_Companies

	  Alter table dbo.Unicorn_Companies Add Unicorn_year  Int
	  
	  select [Company]
      ,[Valuation]
      --[Date Joined]
      ,[Industry]
      ,[City]
      ,[Country]
      ,[Continent]
      --,[Year Founded]
      --[Funding]
      --[Select Investors]
	  ,left("Date Joined",4) as Unicorn_year
	  ,cast("Year Founded" as int) as Year_founded 
	  ,((left("Date Joined",4))-(cast("Year Founded" as int))) as Years_Taken 
	  from dbo.Unicorn_Companies
Select cast("Year Founded" as int) as Year_founded from dbo.Unicorn_Companies
Alter table dbo.Unicorn_Companies Add Year_founded Int
Alter table dbo.Unicorn_Companies drop column Unicorn_year
Alter table dbo.Unicorn_Companies drop column Year_founded



