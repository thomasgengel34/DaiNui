USE [master]
GO
/****** Object:  Database [DaiNuiConnectionString]    Script Date: 10/19/2016 7:40:13 PM ******/
CREATE DATABASE [DaiNuiConnectionString]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DailyNutrition2012', FILENAME = N'E:\PFWBusiness\SQL\DaiNaiDB2014\DailyNutrition2012.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DailyNutrition2012_log', FILENAME = N'E:\PFWBusiness\SQL\DaiNaiDB2014\DailyNutrition2012_log.ldf' , SIZE = 1792KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DaiNuiConnectionString] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DaiNuiConnectionString].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DaiNuiConnectionString] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DaiNuiConnectionString] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DaiNuiConnectionString] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DaiNuiConnectionString] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DaiNuiConnectionString] SET ARITHABORT OFF 
GO
ALTER DATABASE [DaiNuiConnectionString] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DaiNuiConnectionString] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DaiNuiConnectionString] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DaiNuiConnectionString] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DaiNuiConnectionString] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DaiNuiConnectionString] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DaiNuiConnectionString] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DaiNuiConnectionString] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DaiNuiConnectionString] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DaiNuiConnectionString] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DaiNuiConnectionString] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DaiNuiConnectionString] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DaiNuiConnectionString] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DaiNuiConnectionString] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DaiNuiConnectionString] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DaiNuiConnectionString] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [DaiNuiConnectionString] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DaiNuiConnectionString] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DaiNuiConnectionString] SET  MULTI_USER 
GO
ALTER DATABASE [DaiNuiConnectionString] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DaiNuiConnectionString] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DaiNuiConnectionString] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DaiNuiConnectionString] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [DaiNuiConnectionString] SET DELAYED_DURABILITY = DISABLED 
GO
USE [DaiNuiConnectionString]
GO
/****** Object:  User [PFW\Poncho]    Script Date: 10/19/2016 7:40:14 PM ******/
CREATE USER [PFW\Poncho] FOR LOGIN [PFW\Poncho] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 10/19/2016 7:40:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Category] [nchar](25) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Category] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ingredients]    Script Date: 10/19/2016 7:40:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ingredients](
	[Ingredient_ID] [int] IDENTITY(1,1) NOT NULL,
	[ShortDescription] [nvarchar](50) NOT NULL,
	[LongDescription] [nvarchar](max) NOT NULL,
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
	[upc] [char](12) NOT NULL,
	[servingspercontainer] [decimal](6, 2) NULL,
	[Egg] [varchar](2) NOT NULL CONSTRAINT [DF_Ingredients_Egg]  DEFAULT ('" '''),
	[maker] [nvarchar](30) NOT NULL CONSTRAINT [DF_Ingredients_maker]  DEFAULT (N' '),
	[Nuts] [varchar](2) NOT NULL CONSTRAINT [DF_Ingredients_Nuts]  DEFAULT (' '),
	[Milk] [varchar](2) NOT NULL CONSTRAINT [DF_Ingredients_Milk]  DEFAULT (' '),
	[Wheat] [varchar](2) NOT NULL CONSTRAINT [DF_Ingredients_Wheat]  DEFAULT (' '),
	[Soy] [varchar](2) NOT NULL CONSTRAINT [DF_Ingredients_Soy]  DEFAULT (' '),
	[Category] [nvarchar](20) NULL,
	[Corn] [varchar](10) NULL CONSTRAINT [DF_Ingredients_Corn]  DEFAULT (N'not setv'),
	[Onion] [nchar](10) NULL CONSTRAINT [DF_Ingredients_Onion]  DEFAULT (N'not set'),
	[Garlic] [nchar](10) NULL CONSTRAINT [DF_Ingredients_Garlic]  DEFAULT (N'not set'),
	[Sodium Nitrite] [nchar](10) NULL CONSTRAINT [DF_Ingredients_Sodium Nitrite]  DEFAULT (N'not set'),
	[longUPC] [varchar](18) NULL,
 CONSTRAINT [PK_Ingredients] PRIMARY KEY CLUSTERED 
(
	[Ingredient_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UNIQUE_SHORTDESCRIPTION] UNIQUE NONCLUSTERED 
(
	[ShortDescription] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [upc] UNIQUE NONCLUSTERED 
(
	[Ingredient_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Measurements]    Script Date: 10/19/2016 7:40:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Measurements](
	[unit_id] [int] IDENTITY(1,1) NOT NULL,
	[measure] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_Measurements] PRIMARY KEY CLUSTERED 
(
	[unit_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Preparation]    Script Date: 10/19/2016 7:40:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Preparation](
	[Type] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Preparation] PRIMARY KEY CLUSTERED 
(
	[Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[recipeingredients]    Script Date: 10/19/2016 7:40:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[recipeingredients](
	[recipeingredients_id] [int] NULL,
	[ingredient_id] [int] NULL,
	[number] [decimal](5, 2) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Recipes]    Script Date: 10/19/2016 7:40:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recipes](
	[RecipeId] [int] IDENTITY(1,1) NOT NULL,
	[Recipe_Ingredient_id] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[Servings] [smallint] NULL,
	[Category] [nvarchar](25) NULL,
 CONSTRAINT [PK_Recipes] PRIMARY KEY CLUSTERED 
(
	[RecipeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [DaiNuiConnectionString] SET  READ_WRITE 
GO
