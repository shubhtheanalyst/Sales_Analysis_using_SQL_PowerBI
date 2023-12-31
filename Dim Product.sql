-- Cleaned DIM_Products Table--
SELECT
 p.[ProductKey],
 p.[ProductAlternateKey] as ProductItemCode,
--      ,[ProductSubcategoryKey],
--      ,[WeightUnitMeasureCode]
--      ,[SizeUnitMeasureCode]
p.[EnglishProductName] as [Product Name],
ps.[EnglishProductSubCategoryName] as [Sub Category],
pc.[EnglishProductCategoryName] as [Product Category],
--      ,[SpanishProductName]
--      ,[FrenchProductName]
--      ,[StandardCost]
--      ,[FinishedGoodsFlag]
p.[Color] as [Product Color],
--      ,[SafetyStockLevel]
--      ,[ReorderPoint]
--      ,[ListPrice]
p.[Size] as [Product Size],
--      ,[SizeRange]
--      ,[Weight]
--      ,[DaysToManufacture]
p.[ProductLine] as [Product Line],
--      ,[DealerPrice]
--      ,[Class]
--      ,[Style]
p.[ModelName] as [Product Model Name],
--      ,[LargePhoto]
p.[EnglishDescription] as [Product Description],
--      ,[FrenchDescription]
--      ,[ChineseDescription]
--      ,[ArabicDescription]
--      ,[HebrewDescription]
--      ,[ThaiDescription]
--      ,[GermanDescription]
--      ,[JapaneseDescription]
--      ,[TurkishDescription]
--      ,[StartDate]
--      ,[EndDate]
ISNULL (p.Status,'Outdated') AS [Product Status]
  FROM 
  [dbo].[DimProduct] as p
  LEFT JOIN dbo.DimProductSubCategory AS ps on ps.ProductSubCategoryKey = p.ProductSubCategoryKey
  LEFT JOIN dbo.DimProductCategory AS pc on ps.ProductCategoryKey = pc.ProductCategoryKey
order by
  p.ProductKey asc