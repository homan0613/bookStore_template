USE [master]
GO
/****** Object:  Database [Book_Store]    Script Date: 11/14/2018 4:30:41 AM ******/
CREATE DATABASE [Book_Store]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Book_Store', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Book_Store.mdf' , SIZE = 7360KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Book_Store_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Book_Store_log.ldf' , SIZE = 3200KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Book_Store] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Book_Store].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Book_Store] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Book_Store] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Book_Store] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Book_Store] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Book_Store] SET ARITHABORT OFF 
GO
ALTER DATABASE [Book_Store] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Book_Store] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Book_Store] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Book_Store] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Book_Store] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Book_Store] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Book_Store] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Book_Store] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Book_Store] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Book_Store] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Book_Store] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Book_Store] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Book_Store] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Book_Store] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Book_Store] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Book_Store] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Book_Store] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Book_Store] SET RECOVERY FULL 
GO
ALTER DATABASE [Book_Store] SET  MULTI_USER 
GO
ALTER DATABASE [Book_Store] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Book_Store] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Book_Store] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Book_Store] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Book_Store] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Book_Store', N'ON'
GO
USE [Book_Store]
GO
/****** Object:  Table [dbo].[_image_product]    Script Date: 11/14/2018 4:30:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_image_product](
	[img_id] [int] IDENTITY(1,1) NOT NULL,
	[link] [nvarchar](255) NOT NULL,
	[products_id] [int] NOT NULL,
 CONSTRAINT [PK__image_product] PRIMARY KEY CLUSTERED 
(
	[img_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[_user]    Script Date: 11/14/2018 4:30:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[_user](
	[_user_id] [int] IDENTITY(1,1) NOT NULL,
	[_user_name] [nvarchar](100) NULL,
	[_user_email] [varchar](50) NULL,
	[_password] [varchar](16) NULL,
	[_user_address] [nvarchar](200) NULL,
	[_user_phone] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[_user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[amount]    Script Date: 11/14/2018 4:30:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[amount](
	[amount_id] [int] IDENTITY(1,1) NOT NULL,
	[_status] [int] NULL,
	[provider_id] [int] NULL,
	[import_date] [datetime] NULL,
	[export_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[amount_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[auther]    Script Date: 11/14/2018 4:30:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[auther](
	[auther_id] [int] IDENTITY(1,1) NOT NULL,
	[auther_name] [nvarchar](100) NULL,
	[email] [nvarchar](100) NULL,
	[mobile] [varchar](15) NULL,
	[_status] [int] NULL,
	[_address] [varchar](255) NULL,
	[_description] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[auther_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[category]    Script Date: 11/14/2018 4:30:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[cat_id] [int] IDENTITY(1,1) NOT NULL,
	[cat_name] [nvarchar](100) NULL,
	[_status] [int] NULL,
	[metakeyword] [nvarchar](255) NULL,
	[metadescription] [nvarchar](255) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[cat_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[feedback]    Script Date: 11/14/2018 4:30:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[feedback](
	[feedback_id] [int] IDENTITY(1,1) NOT NULL,
	[_user_id] [int] NOT NULL,
	[products_id] [int] NOT NULL,
	[title] [nvarchar](255) NULL,
	[comment] [text] NULL,
	[rating] [float] NULL,
	[status] [smallint] NULL,
	[parent_cmt] [int] NULL,
 CONSTRAINT [PK_feedback] PRIMARY KEY CLUSTERED 
(
	[feedback_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[order]    Script Date: 11/14/2018 4:30:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order](
	[order_id] [int] NOT NULL,
	[_user_id] [int] IDENTITY(1,1) NOT NULL,
	[status] [smallint] NULL,
	[date_create] [datetime] NULL,
	[payment_id] [int] NULL,
	[transport_id] [int] NOT NULL,
 CONSTRAINT [PK_order] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[order_detail]    Script Date: 11/14/2018 4:30:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_detail](
	[order_detail_id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NOT NULL,
	[products_id] [int] NOT NULL,
	[price] [float] NOT NULL,
	[qty] [int] NOT NULL,
	[status] [smallint] NULL,
	[create_date] [datetime] NULL,
 CONSTRAINT [PK_order_detail] PRIMARY KEY CLUSTERED 
(
	[order_detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[payment]    Script Date: 11/14/2018 4:30:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[payment](
	[payment_id] [int] IDENTITY(1,1) NOT NULL,
	[payment_name] [nvarchar](255) NOT NULL,
	[description] [text] NULL,
 CONSTRAINT [PK_payment] PRIMARY KEY CLUSTERED 
(
	[payment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[products]    Script Date: 11/14/2018 4:30:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[products_id] [int] IDENTITY(1,1) NOT NULL,
	[products_name] [nvarchar](200) NULL,
	[sublisher_id] [int] NULL,
	[auther_id] [int] NULL,
	[translator_id] [int] NULL,
	[cat_id] [int] NULL,
	[amount_id] [int] NULL,
	[republish] [int] NULL,
	[qty_page] [int] NULL,
	[_description] [text] NULL,
	[_weight] [int] NULL,
	[made_in] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[products_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[provider]    Script Date: 11/14/2018 4:30:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[provider](
	[provider_id] [int] IDENTITY(1,1) NOT NULL,
	[_status] [int] NULL,
	[provider_name] [nvarchar](100) NULL,
	[provider_address] [nvarchar](255) NULL,
	[provider_phone] [varchar](15) NULL,
	[provider_email] [nvarchar](100) NULL,
	[_description] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[provider_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sale]    Script Date: 11/14/2018 4:30:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sale](
	[sale_id] [int] IDENTITY(1,1) NOT NULL,
	[discount] [float] NULL,
	[_status] [int] NULL,
	[metakeyword] [nvarchar](255) NULL,
	[metadescription] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[sale_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sale_detail]    Script Date: 11/14/2018 4:30:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sale_detail](
	[products_id] [int] NULL,
	[sale_id] [int] NULL,
	[_begin] [datetime] NULL,
	[_finish] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sublisher]    Script Date: 11/14/2018 4:30:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sublisher](
	[sublisher_id] [int] IDENTITY(1,1) NOT NULL,
	[sublisher_name] [nvarchar](100) NULL,
	[email] [nvarchar](100) NULL,
	[mobile] [varchar](15) NULL,
	[_status] [int] NULL,
	[_address] [varchar](255) NULL,
	[_description] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[sublisher_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[translator]    Script Date: 11/14/2018 4:30:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[translator](
	[translator_id] [int] IDENTITY(1,1) NOT NULL,
	[translator_name] [nvarchar](100) NULL,
	[email] [nvarchar](100) NULL,
	[mobile] [varchar](15) NULL,
	[_status] [int] NULL,
	[_address] [varchar](255) NULL,
	[_description] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[translator_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[transport]    Script Date: 11/14/2018 4:30:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[transport](
	[transport_id] [int] IDENTITY(1,1) NOT NULL,
	[transport_name] [nvarchar](50) NOT NULL,
	[_description] [nvarchar](255) NULL,
 CONSTRAINT [PK_transport] PRIMARY KEY CLUSTERED 
(
	[transport_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[wishlist]    Script Date: 11/14/2018 4:30:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wishlist](
	[wishlist_id] [int] IDENTITY(1,1) NOT NULL,
	[_user_id] [int] NOT NULL,
	[products_id] [int] NOT NULL,
 CONSTRAINT [PK_wishlist] PRIMARY KEY CLUSTERED 
(
	[wishlist_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[_image_product]  WITH CHECK ADD  CONSTRAINT [FK__image_product_products] FOREIGN KEY([products_id])
REFERENCES [dbo].[products] ([products_id])
GO
ALTER TABLE [dbo].[_image_product] CHECK CONSTRAINT [FK__image_product_products]
GO
ALTER TABLE [dbo].[amount]  WITH CHECK ADD  CONSTRAINT [FK_P_provider] FOREIGN KEY([provider_id])
REFERENCES [dbo].[provider] ([provider_id])
GO
ALTER TABLE [dbo].[amount] CHECK CONSTRAINT [FK_P_provider]
GO
ALTER TABLE [dbo].[feedback]  WITH CHECK ADD  CONSTRAINT [FK_feedback__user] FOREIGN KEY([_user_id])
REFERENCES [dbo].[_user] ([_user_id])
GO
ALTER TABLE [dbo].[feedback] CHECK CONSTRAINT [FK_feedback__user]
GO
ALTER TABLE [dbo].[feedback]  WITH CHECK ADD  CONSTRAINT [FK_feedback_products] FOREIGN KEY([products_id])
REFERENCES [dbo].[products] ([products_id])
GO
ALTER TABLE [dbo].[feedback] CHECK CONSTRAINT [FK_feedback_products]
GO
ALTER TABLE [dbo].[order]  WITH CHECK ADD  CONSTRAINT [FK_order_payment] FOREIGN KEY([payment_id])
REFERENCES [dbo].[payment] ([payment_id])
GO
ALTER TABLE [dbo].[order] CHECK CONSTRAINT [FK_order_payment]
GO
ALTER TABLE [dbo].[order]  WITH CHECK ADD  CONSTRAINT [FK_order_transport] FOREIGN KEY([transport_id])
REFERENCES [dbo].[transport] ([transport_id])
GO
ALTER TABLE [dbo].[order] CHECK CONSTRAINT [FK_order_transport]
GO
ALTER TABLE [dbo].[order_detail]  WITH CHECK ADD  CONSTRAINT [FK_order_detail_order] FOREIGN KEY([order_id])
REFERENCES [dbo].[order] ([order_id])
GO
ALTER TABLE [dbo].[order_detail] CHECK CONSTRAINT [FK_order_detail_order]
GO
ALTER TABLE [dbo].[order_detail]  WITH CHECK ADD  CONSTRAINT [FK_order_detail_products] FOREIGN KEY([products_id])
REFERENCES [dbo].[products] ([products_id])
GO
ALTER TABLE [dbo].[order_detail] CHECK CONSTRAINT [FK_order_detail_products]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FK_P_amount] FOREIGN KEY([amount_id])
REFERENCES [dbo].[amount] ([amount_id])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FK_P_amount]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FK_P_auther] FOREIGN KEY([auther_id])
REFERENCES [dbo].[auther] ([auther_id])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FK_P_auther]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FK_P_category] FOREIGN KEY([cat_id])
REFERENCES [dbo].[category] ([cat_id])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FK_P_category]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FK_P_Sublisher] FOREIGN KEY([sublisher_id])
REFERENCES [dbo].[sublisher] ([sublisher_id])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FK_P_Sublisher]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FK_P_translator] FOREIGN KEY([translator_id])
REFERENCES [dbo].[translator] ([translator_id])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FK_P_translator]
GO
ALTER TABLE [dbo].[sale_detail]  WITH CHECK ADD  CONSTRAINT [FK_P_products] FOREIGN KEY([products_id])
REFERENCES [dbo].[products] ([products_id])
GO
ALTER TABLE [dbo].[sale_detail] CHECK CONSTRAINT [FK_P_products]
GO
ALTER TABLE [dbo].[sale_detail]  WITH CHECK ADD  CONSTRAINT [FK_P_sale] FOREIGN KEY([sale_id])
REFERENCES [dbo].[sale] ([sale_id])
GO
ALTER TABLE [dbo].[sale_detail] CHECK CONSTRAINT [FK_P_sale]
GO
ALTER TABLE [dbo].[wishlist]  WITH CHECK ADD  CONSTRAINT [FK_wishlist__user] FOREIGN KEY([_user_id])
REFERENCES [dbo].[_user] ([_user_id])
GO
ALTER TABLE [dbo].[wishlist] CHECK CONSTRAINT [FK_wishlist__user]
GO
ALTER TABLE [dbo].[wishlist]  WITH CHECK ADD  CONSTRAINT [FK_wishlist_products] FOREIGN KEY([products_id])
REFERENCES [dbo].[products] ([products_id])
GO
ALTER TABLE [dbo].[wishlist] CHECK CONSTRAINT [FK_wishlist_products]
GO
USE [master]
GO
ALTER DATABASE [Book_Store] SET  READ_WRITE 
GO
