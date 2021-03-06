USE [master]
GO
/****** Object:  Database [Wardrobe1]    Script Date: 5/1/2017 4:41:32 PM ******/
CREATE DATABASE [Wardrobe1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Wardrobe1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Wardrobe1.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Wardrobe1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Wardrobe1_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Wardrobe1] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Wardrobe1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Wardrobe1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Wardrobe1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Wardrobe1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Wardrobe1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Wardrobe1] SET ARITHABORT OFF 
GO
ALTER DATABASE [Wardrobe1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Wardrobe1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Wardrobe1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Wardrobe1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Wardrobe1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Wardrobe1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Wardrobe1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Wardrobe1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Wardrobe1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Wardrobe1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Wardrobe1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Wardrobe1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Wardrobe1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Wardrobe1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Wardrobe1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Wardrobe1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Wardrobe1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Wardrobe1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Wardrobe1] SET  MULTI_USER 
GO
ALTER DATABASE [Wardrobe1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Wardrobe1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Wardrobe1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Wardrobe1] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Wardrobe1] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Wardrobe1]
GO
/****** Object:  Table [dbo].[Accessories]    Script Date: 5/1/2017 4:41:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accessories](
	[AccessoriesID] [int] IDENTITY(1,1) NOT NULL,
	[AccessoriesName] [nvarchar](50) NOT NULL,
	[AccessoriesPhoto] [nvarchar](50) NOT NULL,
	[AccessoriesType] [nvarchar](50) NOT NULL,
	[AccessoriesColor] [nvarchar](50) NOT NULL,
	[AccessoriesSeason] [nvarchar](50) NOT NULL,
	[AccessoriesOccasion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Accessories] PRIMARY KEY CLUSTERED 
(
	[AccessoriesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bottoms]    Script Date: 5/1/2017 4:41:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bottoms](
	[BottomID] [int] IDENTITY(1,1) NOT NULL,
	[BottomName] [nvarchar](50) NOT NULL,
	[BottomPhoto] [nvarchar](50) NOT NULL,
	[BottomType] [nvarchar](50) NOT NULL,
	[BottomColor] [nvarchar](50) NOT NULL,
	[BottomSeason] [nvarchar](50) NOT NULL,
	[BottomOccasion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Bottoms] PRIMARY KEY CLUSTERED 
(
	[BottomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Outfits]    Script Date: 5/1/2017 4:41:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Outfits](
	[OutfitID] [int] IDENTITY(1,1) NOT NULL,
	[TopID] [int] NOT NULL,
	[BottomID] [int] NOT NULL,
	[ShoeID] [int] NOT NULL,
	[AccessoriesID] [int] NOT NULL,
 CONSTRAINT [PK_Outfits] PRIMARY KEY CLUSTERED 
(
	[OutfitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shoes]    Script Date: 5/1/2017 4:41:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shoes](
	[ShoeID] [int] IDENTITY(1,1) NOT NULL,
	[ShoeName] [nvarchar](50) NOT NULL,
	[ShoePhoto] [nvarchar](50) NOT NULL,
	[ShoeType] [nvarchar](50) NOT NULL,
	[ShoeColor] [nvarchar](50) NOT NULL,
	[ShoeSeason] [nvarchar](50) NOT NULL,
	[ShoeOccasion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Shoes] PRIMARY KEY CLUSTERED 
(
	[ShoeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tops]    Script Date: 5/1/2017 4:41:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tops](
	[TopID] [int] IDENTITY(1,1) NOT NULL,
	[TopName] [nvarchar](50) NOT NULL,
	[TopPhoto] [nvarchar](50) NOT NULL,
	[TopType] [nvarchar](50) NOT NULL,
	[TopColor] [nvarchar](50) NOT NULL,
	[TopSeason] [nvarchar](50) NOT NULL,
	[TopOccasion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Tops] PRIMARY KEY CLUSTERED 
(
	[TopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Accessories] ON 

INSERT [dbo].[Accessories] ([AccessoriesID], [AccessoriesName], [AccessoriesPhoto], [AccessoriesType], [AccessoriesColor], [AccessoriesSeason], [AccessoriesOccasion]) VALUES (1, N'Cartier', N'\Content\Images\cartierwatch.jpg', N'Watch', N'Two-tone', N'Year Round', N'Anytime')
INSERT [dbo].[Accessories] ([AccessoriesID], [AccessoriesName], [AccessoriesPhoto], [AccessoriesType], [AccessoriesColor], [AccessoriesSeason], [AccessoriesOccasion]) VALUES (2, N'Chanel', N'\Content\Images\chanelbag.jpg', N'Handbag', N'Black', N'Spring', N'Club/Nightlife')
INSERT [dbo].[Accessories] ([AccessoriesID], [AccessoriesName], [AccessoriesPhoto], [AccessoriesType], [AccessoriesColor], [AccessoriesSeason], [AccessoriesOccasion]) VALUES (3, N'Kate Spade', N'\Content\Images\crystalnecklace.jpg', N'Necklace', N'Multi-color', N'Year Round', N'Party')
INSERT [dbo].[Accessories] ([AccessoriesID], [AccessoriesName], [AccessoriesPhoto], [AccessoriesType], [AccessoriesColor], [AccessoriesSeason], [AccessoriesOccasion]) VALUES (4, N'Ray-Ban', N'\Content\Images\rayban.jpg', N'Sunglasses', N'Black', N'Spring/Summer', N'Outdoors')
INSERT [dbo].[Accessories] ([AccessoriesID], [AccessoriesName], [AccessoriesPhoto], [AccessoriesType], [AccessoriesColor], [AccessoriesSeason], [AccessoriesOccasion]) VALUES (5, N'Free People', N'\Content\Images\handbag.jpg', N'Tote', N'Reversible', N'Year Round', N'Anytime')
SET IDENTITY_INSERT [dbo].[Accessories] OFF
SET IDENTITY_INSERT [dbo].[Bottoms] ON 

INSERT [dbo].[Bottoms] ([BottomID], [BottomName], [BottomPhoto], [BottomType], [BottomColor], [BottomSeason], [BottomOccasion]) VALUES (1, N'Gucci', N'\Content\Images\jeans.jpg', N'Jeans', N'Denim', N'Fall', N'Business Casual')
INSERT [dbo].[Bottoms] ([BottomID], [BottomName], [BottomPhoto], [BottomType], [BottomColor], [BottomSeason], [BottomOccasion]) VALUES (2, N'Brooks Brother', N'\Content\Images\orangepants.jpg', N'Chinos', N'Orange', N'Fall', N'Cocktail')
INSERT [dbo].[Bottoms] ([BottomID], [BottomName], [BottomPhoto], [BottomType], [BottomColor], [BottomSeason], [BottomOccasion]) VALUES (3, N'Calvin Klein', N'\Content\Images\whitepants.jpg', N'Corduroy', N'White', N'Winter', N'Cocktail')
INSERT [dbo].[Bottoms] ([BottomID], [BottomName], [BottomPhoto], [BottomType], [BottomColor], [BottomSeason], [BottomOccasion]) VALUES (4, N'Uniqlo', N'\Content\Images\redpants.jpg', N'Trousers', N'Red', N'Spring', N'Casual')
INSERT [dbo].[Bottoms] ([BottomID], [BottomName], [BottomPhoto], [BottomType], [BottomColor], [BottomSeason], [BottomOccasion]) VALUES (5, N'Diane Von Furstenburg', N'\Content\Images\printedpants.jpg', N'Satin pants', N'Pink', N'Spring', N'Beach')
SET IDENTITY_INSERT [dbo].[Bottoms] OFF
SET IDENTITY_INSERT [dbo].[Shoes] ON 

INSERT [dbo].[Shoes] ([ShoeID], [ShoeName], [ShoePhoto], [ShoeType], [ShoeColor], [ShoeSeason], [ShoeOccasion]) VALUES (1, N'Gucci', N'\Content\Images\blackflats.jpg', N'Flats', N'Black', N'Spring', N'Casual')
INSERT [dbo].[Shoes] ([ShoeID], [ShoeName], [ShoePhoto], [ShoeType], [ShoeColor], [ShoeSeason], [ShoeOccasion]) VALUES (2, N'Louboutins', N'\Content\Images\blackheels.jpg', N'Heels', N'Black', N'Spring', N'Formal')
INSERT [dbo].[Shoes] ([ShoeID], [ShoeName], [ShoePhoto], [ShoeType], [ShoeColor], [ShoeSeason], [ShoeOccasion]) VALUES (3, N'Chloe', N'\Content\Images\blueflats.jpg', N'Flats', N'Blue', N'Summer', N'Cocktail')
INSERT [dbo].[Shoes] ([ShoeID], [ShoeName], [ShoePhoto], [ShoeType], [ShoeColor], [ShoeSeason], [ShoeOccasion]) VALUES (4, N'Steve Madden', N'\Content\Images\corkheel.jpg', N'Wedges', N'Tan', N'Summer', N'Beach')
INSERT [dbo].[Shoes] ([ShoeID], [ShoeName], [ShoePhoto], [ShoeType], [ShoeColor], [ShoeSeason], [ShoeOccasion]) VALUES (5, N'Gucci', N'\Content\Images\gucciloafers.jpg', N'Loafers', N'Brown', N'Winter', N'Slippers')
SET IDENTITY_INSERT [dbo].[Shoes] OFF
SET IDENTITY_INSERT [dbo].[Tops] ON 

INSERT [dbo].[Tops] ([TopID], [TopName], [TopPhoto], [TopType], [TopColor], [TopSeason], [TopOccasion]) VALUES (1, N'Ralph Lauren', N'\Content\Images\pinkpolo.jpg', N'Polo', N'Pink', N'Summer', N'Casual')
INSERT [dbo].[Tops] ([TopID], [TopName], [TopPhoto], [TopType], [TopColor], [TopSeason], [TopOccasion]) VALUES (2, N'Banana Republic', N'\Content\Images\greypullover.jpg', N'Pullover', N'Grey', N'Winter', N'Cocktail')
INSERT [dbo].[Tops] ([TopID], [TopName], [TopPhoto], [TopType], [TopColor], [TopSeason], [TopOccasion]) VALUES (3, N'Everlane', N'\Content\Images\pinkanimalsweater.jpg', N'Sweater', N'Pink', N'Fall', N'Business Casual')
INSERT [dbo].[Tops] ([TopID], [TopName], [TopPhoto], [TopType], [TopColor], [TopSeason], [TopOccasion]) VALUES (4, N'Uniqlo', N'\Content\Images\purpletop.jpg', N'Shirt', N'Purple', N'Spring', N'Contemporary Hour')
INSERT [dbo].[Tops] ([TopID], [TopName], [TopPhoto], [TopType], [TopColor], [TopSeason], [TopOccasion]) VALUES (5, N'Gap', N'\Content\Images\chambaray.jpg', N'Button Down', N'Denim', N'Spring', N'Casual')
SET IDENTITY_INSERT [dbo].[Tops] OFF
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Accessories] FOREIGN KEY([AccessoriesID])
REFERENCES [dbo].[Accessories] ([AccessoriesID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Accessories]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Bottoms] FOREIGN KEY([BottomID])
REFERENCES [dbo].[Bottoms] ([BottomID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Bottoms]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Shoes] FOREIGN KEY([ShoeID])
REFERENCES [dbo].[Shoes] ([ShoeID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Shoes]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Tops] FOREIGN KEY([TopID])
REFERENCES [dbo].[Tops] ([TopID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Tops]
GO
USE [master]
GO
ALTER DATABASE [Wardrobe1] SET  READ_WRITE 
GO
