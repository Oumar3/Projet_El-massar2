USE [master]
GO
/****** Object:  Database [societel_El_massar2]    Script Date: 16/02/2022 13:01:52 ******/
CREATE DATABASE [societel_El_massar2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'societel_El_massar2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\societel_El_massar2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'societel_El_massar2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\societel_El_massar2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [societel_El_massar2] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [societel_El_massar2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [societel_El_massar2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [societel_El_massar2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [societel_El_massar2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [societel_El_massar2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [societel_El_massar2] SET ARITHABORT OFF 
GO
ALTER DATABASE [societel_El_massar2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [societel_El_massar2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [societel_El_massar2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [societel_El_massar2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [societel_El_massar2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [societel_El_massar2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [societel_El_massar2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [societel_El_massar2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [societel_El_massar2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [societel_El_massar2] SET  DISABLE_BROKER 
GO
ALTER DATABASE [societel_El_massar2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [societel_El_massar2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [societel_El_massar2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [societel_El_massar2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [societel_El_massar2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [societel_El_massar2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [societel_El_massar2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [societel_El_massar2] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [societel_El_massar2] SET  MULTI_USER 
GO
ALTER DATABASE [societel_El_massar2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [societel_El_massar2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [societel_El_massar2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [societel_El_massar2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [societel_El_massar2] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [societel_El_massar2] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [societel_El_massar2] SET QUERY_STORE = OFF
GO
USE [societel_El_massar2]
GO
/****** Object:  Table [dbo].[categorie_chambre]    Script Date: 16/02/2022 13:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categorie_chambre](
	[id_catcham] [int] IDENTITY(1,1) NOT NULL,
	[code] [varchar](10) NULL,
	[prix] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_catcham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[categorie_hotel]    Script Date: 16/02/2022 13:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categorie_hotel](
	[id_cathotel] [int] IDENTITY(1,1) NOT NULL,
	[nbrEtoile] [int] NULL,
	[caracteristiques] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_cathotel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chambre]    Script Date: 16/02/2022 13:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chambre](
	[id_chambre] [int] IDENTITY(1,1) NOT NULL,
	[num_chambre] [int] NULL,
	[tel] [varchar](30) NULL,
	[id_hotel] [int] NULL,
	[id_catcham] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_chambre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chambre_client]    Script Date: 16/02/2022 13:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chambre_client](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_client] [int] NULL,
	[id_chambre] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[client]    Script Date: 16/02/2022 13:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[client](
	[id_client] [int] IDENTITY(1,1) NOT NULL,
	[nom] [varchar](30) NULL,
	[prenom] [varchar](30) NULL,
	[adresse] [varchar](30) NULL,
	[ville] [varchar](30) NULL,
	[codePostal] [varchar](10) NULL,
	[pays] [varchar](30) NULL,
	[tel] [varchar](30) NULL,
	[email] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_client] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[consommation]    Script Date: 16/02/2022 13:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[consommation](
	[id_consom] [int] IDENTITY(1,1) NOT NULL,
	[numConsom] [int] NULL,
	[dateConsom] [date] NULL,
	[heur] [time](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_consom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[facture]    Script Date: 16/02/2022 13:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[facture](
	[id_fact] [int] IDENTITY(1,1) NOT NULL,
	[prix_cham] [float] NULL,
	[quantite] [int] NULL,
	[id_client] [int] NULL,
	[id_consom] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_fact] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hotel]    Script Date: 16/02/2022 13:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hotel](
	[id_hotel] [int] IDENTITY(1,1) NOT NULL,
	[nom] [varchar](30) NULL,
	[adress] [varchar](30) NULL,
	[codePostal] [varchar](30) NULL,
	[tel] [varchar](30) NULL,
	[id_prestation] [int] NULL,
	[id_cathotel] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_hotel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[prestation]    Script Date: 16/02/2022 13:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prestation](
	[id_prestation] [int] IDENTITY(1,1) NOT NULL,
	[code] [varchar](10) NULL,
	[designation] [varchar](45) NULL,
	[prix] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_prestation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reservation]    Script Date: 16/02/2022 13:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reservation](
	[id_reservation] [int] IDENTITY(1,1) NOT NULL,
	[numResevation] [int] NULL,
	[dateDebut] [date] NULL,
	[dateFin] [date] NULL,
	[datePayeArr] [date] NULL,
	[MontantArr] [float] NULL,
	[id_client] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_reservation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[test]    Script Date: 16/02/2022 13:01:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[test](
	[id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[chambre]  WITH CHECK ADD  CONSTRAINT [id_catcham_chfk] FOREIGN KEY([id_catcham])
REFERENCES [dbo].[categorie_chambre] ([id_catcham])
GO
ALTER TABLE [dbo].[chambre] CHECK CONSTRAINT [id_catcham_chfk]
GO
ALTER TABLE [dbo].[chambre]  WITH CHECK ADD  CONSTRAINT [id_hotel_chfk] FOREIGN KEY([id_hotel])
REFERENCES [dbo].[hotel] ([id_hotel])
GO
ALTER TABLE [dbo].[chambre] CHECK CONSTRAINT [id_hotel_chfk]
GO
ALTER TABLE [dbo].[chambre_client]  WITH CHECK ADD  CONSTRAINT [id_chambre_cchfk] FOREIGN KEY([id_chambre])
REFERENCES [dbo].[chambre] ([id_chambre])
GO
ALTER TABLE [dbo].[chambre_client] CHECK CONSTRAINT [id_chambre_cchfk]
GO
ALTER TABLE [dbo].[chambre_client]  WITH CHECK ADD  CONSTRAINT [id_client_cchfk] FOREIGN KEY([id_client])
REFERENCES [dbo].[client] ([id_client])
GO
ALTER TABLE [dbo].[chambre_client] CHECK CONSTRAINT [id_client_cchfk]
GO
ALTER TABLE [dbo].[facture]  WITH CHECK ADD  CONSTRAINT [id_client_ffk] FOREIGN KEY([id_client])
REFERENCES [dbo].[client] ([id_client])
GO
ALTER TABLE [dbo].[facture] CHECK CONSTRAINT [id_client_ffk]
GO
ALTER TABLE [dbo].[facture]  WITH CHECK ADD  CONSTRAINT [id_consom_ffk] FOREIGN KEY([id_consom])
REFERENCES [dbo].[consommation] ([id_consom])
GO
ALTER TABLE [dbo].[facture] CHECK CONSTRAINT [id_consom_ffk]
GO
ALTER TABLE [dbo].[hotel]  WITH CHECK ADD  CONSTRAINT [id_cathotel_hfk] FOREIGN KEY([id_cathotel])
REFERENCES [dbo].[categorie_hotel] ([id_cathotel])
GO
ALTER TABLE [dbo].[hotel] CHECK CONSTRAINT [id_cathotel_hfk]
GO
ALTER TABLE [dbo].[hotel]  WITH CHECK ADD  CONSTRAINT [id_prestation_hfk] FOREIGN KEY([id_prestation])
REFERENCES [dbo].[prestation] ([id_prestation])
GO
ALTER TABLE [dbo].[hotel] CHECK CONSTRAINT [id_prestation_hfk]
GO
ALTER TABLE [dbo].[reservation]  WITH CHECK ADD  CONSTRAINT [id_client_rfk] FOREIGN KEY([id_client])
REFERENCES [dbo].[client] ([id_client])
GO
ALTER TABLE [dbo].[reservation] CHECK CONSTRAINT [id_client_rfk]
GO
ALTER TABLE [dbo].[categorie_hotel]  WITH CHECK ADD CHECK  (([nbrEtoile]>=(1) AND [nbrEtoile]<=(5)))
GO
USE [master]
GO
ALTER DATABASE [societel_El_massar2] SET  READ_WRITE 
GO
