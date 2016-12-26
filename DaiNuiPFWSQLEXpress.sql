USE [DaiNuiConnectionString]
GO
/****** Object:  Schema [INGREDIENT]    Script Date: 12/26/2016 8:22:08 AM ******/
CREATE SCHEMA [INGREDIENT]
GO
/****** Object:  Schema [RECIPE]    Script Date: 12/26/2016 8:22:08 AM ******/
CREATE SCHEMA [RECIPE]
GO
/****** Object:  Table [INGREDIENT].[Ingredients]    Script Date: 12/26/2016 8:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [INGREDIENT].[Ingredients](
	[IngredientID] [int] IDENTITY(1,1) NOT NULL,
	[ShortDescription] [nvarchar](50) NOT NULL,
	[LongDescription] [nvarchar](max) NULL,
	[ServingSize] [numeric](7, 3) NULL,
	[ServingSizeUnit] [int] NOT NULL,
	[Calories] [smallint] NULL,
	[CalFromFat] [smallint] NULL,
	[TotalFat] [decimal](6, 2) NULL,
	[SaturatedFat] [decimal](6, 2) NULL,
	[TransFat] [decimal](6, 2) NULL,
	[PolyUnsatFat] [decimal](6, 2) NULL,
	[MonounsatFat] [decimal](6, 2) NULL,
	[Cholesterol] [decimal](6, 2) NULL,
	[Sodium] [decimal](6, 2) NULL,
	[TotalCarbohydrates] [decimal](6, 2) NULL,
	[Protein] [decimal](6, 2) NULL,
	[Potassium] [decimal](6, 2) NULL,
	[DietaryFiber] [decimal](6, 2) NULL,
	[Sugars] [decimal](6, 2) NULL,
	[VitaminA] [int] NULL,
	[VitaminC] [int] NULL,
	[Calcium] [int] NULL,
	[Iron] [int] NULL,
	[FolicAcid] [int] NULL,
	[ServingsPerContainer] [decimal](6, 2) NULL,
	[Egg] [nvarchar](10) NULL,
	[Maker] [nvarchar](30) NULL,
	[Nuts] [nvarchar](10) NULL,
	[Milk] [nvarchar](10) NULL,
	[Wheat] [nvarchar](10) NULL,
	[Soy] [nvarchar](10) NULL,
	[Category] [nvarchar](20) NULL,
	[Corn] [nvarchar](10) NULL,
	[Onion] [nvarchar](10) NULL,
	[Garlic] [nvarchar](10) NULL,
	[Sodium Nitrite] [nvarchar](10) NULL,
	[UPC] [nvarchar](18) NULL,
	[Caffeine] [nvarchar](10) NULL,
	[FoodGroup] [nvarchar](10) NULL,
	[StorageType] [nvarchar](10) NULL,
	[IngredientsList] [nvarchar](max) NULL,
	[CreationDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[ContainerSize] [decimal](6, 2) NULL,
	[ContainerSizeUnit] [nvarchar](10) NULL,
	[ContainerSizeInGrams] [decimal](6, 2) NULL,
	[Brand] [nvarchar](20) NULL,
	[AddedByUser] [nvarchar](10) NULL,
	[Discriminator ] [nvarchar](128) NOT NULL,
	[Recipe_RecipeId] [int] NULL,
	[Recipe_RecipeId1] [int] NULL,
 CONSTRAINT [PK_Ingredients] PRIMARY KEY CLUSTERED 
(
	[IngredientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UNIQUE_SHORTDESCRIPTION] UNIQUE NONCLUSTERED 
(
	[ShortDescription] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [upc] UNIQUE NONCLUSTERED 
(
	[IngredientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [INGREDIENT].[Measurements]    Script Date: 12/26/2016 8:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [INGREDIENT].[Measurements](
	[unit_id] [int] IDENTITY(1,1) NOT NULL,
	[measure] [nvarchar](15) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [RECIPE].[Recipe]    Script Date: 12/26/2016 8:22:08 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [RECIPE].[Recipe](
	[RecipeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Servings] [nvarchar](max) NULL,
	[Category] [nvarchar](max) NULL,
	[Calories] [int] NOT NULL,
 CONSTRAINT [PK_RECIPE.Recipe] PRIMARY KEY CLUSTERED 
(
	[RecipeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [INGREDIENT].[Ingredients] ADD  DEFAULT ('') FOR [Discriminator ]
GO
ALTER TABLE [INGREDIENT].[Ingredients]  WITH CHECK ADD  CONSTRAINT [FK_INGREDIENT.Ingredients_RECIPE.Recipe_Recipe_RecipeId1] FOREIGN KEY([Recipe_RecipeId1])
REFERENCES [RECIPE].[Recipe] ([RecipeId])
GO
ALTER TABLE [INGREDIENT].[Ingredients] CHECK CONSTRAINT [FK_INGREDIENT.Ingredients_RECIPE.Recipe_Recipe_RecipeId1]
GO
