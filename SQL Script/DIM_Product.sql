-- Cleaned DIM_Product Table --
SELECT p.[ProductKey]
      ,p.[ProductAlternateKey] AS [ProductItemCode]  
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      ,p.[EnglishProductName] AS [Product Name]
	  ,pc.[EnglishProductCategoryName] AS [Product Category]
	  ,ps.[EnglishProductSubcategoryName] AS [Product Sub Category]
      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
      ,p.[Color] AS [Product Color]
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      ,p.[Size] AS [Product Size]
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      ,p.[ProductLine] AS [Product Line]
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      ,p.[ModelName] AS [Product Model Name]
      --,[LargePhoto]
      ,p.[EnglishDescription] AS [Product Description]
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
      ,ISNULL (P.[Status],'outdated') AS [Product Status]
  FROM 
	  [AdventureWorksDW2019].[dbo].[DimProduct] AS p
  LEFT JOIN 
	  [AdventureWorksDW2019].[dbo].[DimProductSubcategory] AS ps 
  ON 
	  p.ProductSubcategoryKey = ps.ProductSubcategoryKey 
  LEFT JOIN 
	  [AdventureWorksDW2019].[dbo].[DimProductCategory] AS pc 
  ON 
	  ps.ProductCategoryKey = pc.ProductCategoryKey
  order by 
	  p.ProductKey ASC