USE [master]
GO
/****** Object:  Database [CarBook]    Script Date: 24-Aug-23 9:38:39 AM ******/
CREATE DATABASE [CarBook]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CarBook', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\CarBook.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CarBook_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\CarBook_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [CarBook] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CarBook].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CarBook] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CarBook] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CarBook] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CarBook] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CarBook] SET ARITHABORT OFF 
GO
ALTER DATABASE [CarBook] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CarBook] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CarBook] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CarBook] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CarBook] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CarBook] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CarBook] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CarBook] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CarBook] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CarBook] SET  ENABLE_BROKER 
GO
ALTER DATABASE [CarBook] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CarBook] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CarBook] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CarBook] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CarBook] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CarBook] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [CarBook] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CarBook] SET RECOVERY FULL 
GO
ALTER DATABASE [CarBook] SET  MULTI_USER 
GO
ALTER DATABASE [CarBook] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CarBook] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CarBook] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CarBook] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CarBook] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CarBook] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'CarBook', N'ON'
GO
ALTER DATABASE [CarBook] SET QUERY_STORE = OFF
GO
USE [CarBook]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 24-Aug-23 9:38:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 24-Aug-23 9:38:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 24-Aug-23 9:38:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 24-Aug-23 9:38:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 24-Aug-23 9:38:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 24-Aug-23 9:38:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 24-Aug-23 9:38:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 24-Aug-23 9:38:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blogs]    Script Date: 24-Aug-23 9:38:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blogs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Summary] [nvarchar](max) NOT NULL,
	[AuthorID] [nvarchar](450) NOT NULL,
	[Create_Date] [datetime2](7) NOT NULL,
	[Image] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Blogs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cars]    Script Date: 24-Aug-23 9:38:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cars](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Image] [nvarchar](max) NOT NULL,
	[Price] [real] NOT NULL,
	[CategoryID] [int] NOT NULL,
	[PropertyID] [int] NOT NULL,
	[FeatureID] [int] NOT NULL,
	[OwnerID] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_Cars] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 24-Aug-23 9:38:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 24-Aug-23 9:38:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[CommentType] [nvarchar](max) NOT NULL,
	[OwnerId] [nvarchar](450) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ParentId] [int] NULL,
	[BlogId] [int] NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Features]    Script Date: 24-Aug-23 9:38:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Features](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsAirconditions] [bit] NOT NULL,
	[IsChildSeat] [bit] NOT NULL,
	[IsGPS] [bit] NOT NULL,
	[IsLuggage] [bit] NOT NULL,
	[IsMusic] [bit] NOT NULL,
	[IsSeatBelt] [bit] NOT NULL,
	[IsSleepingBed] [bit] NOT NULL,
	[IsWater] [bit] NOT NULL,
	[IsBluetooth] [bit] NOT NULL,
	[IsOnboardComputer] [bit] NOT NULL,
	[IsAudioInput] [bit] NOT NULL,
	[IsLongTermTrips] [bit] NOT NULL,
	[IsCarKit] [bit] NOT NULL,
	[IsRemoteCentralLocking] [bit] NOT NULL,
	[IsClimateControl] [bit] NOT NULL,
 CONSTRAINT [PK_Features] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 24-Aug-23 9:38:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PickUpLocation] [nvarchar](max) NOT NULL,
	[DropUpLocation] [nvarchar](max) NOT NULL,
	[PickUpDate] [datetime2](7) NOT NULL,
	[DropUpDate] [datetime2](7) NOT NULL,
	[Time] [nvarchar](max) NOT NULL,
	[Price] [real] NULL,
	[CarID] [int] NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[Status] [nvarchar](max) NOT NULL,
	[Note] [nvarchar](max) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Properties]    Script Date: 24-Aug-23 9:38:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Properties](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Milerage] [int] NOT NULL,
	[Transmission] [nvarchar](max) NOT NULL,
	[Seats] [int] NOT NULL,
	[Luggage] [int] NOT NULL,
	[Fuel] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Properties] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230822043011_init', N'6.0.21')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'3a5e93cb-5f2c-446b-a8e6-156c14220fa2', N'Admin', N'ADMIN', N'5805c44d-a60c-4f8c-bafe-508f419ac139')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'ade5aed2-ae46-4123-862a-8eabda0e269a', N'Customer', N'CUSTOMER', N'4171ed34-9cb3-406d-8254-120e43f5d338')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'f0fd1be2-d493-45e9-bac3-73ee10490e2b', N'Owner', N'OWNER', N'a35d159a-0e94-4193-a62e-cc36e2934541')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b82f38fe-3b44-4d8d-b638-6481ff501c94', N'3a5e93cb-5f2c-446b-a8e6-156c14220fa2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3b284ec0-57b8-4c3e-9824-3e26b0b17d7a', N'f0fd1be2-d493-45e9-bac3-73ee10490e2b')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'3b284ec0-57b8-4c3e-9824-3e26b0b17d7a', N'khoanthe161852@gmail.com', N'KHOANTHE161852@GMAIL.COM', N'khoanthe161852@gmail.com', N'KHOANTHE161852@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEIWSBfEHPqzd9NvGX67kti8+i39LJjA2sNAltUvbjXGm3/taSWoP0PAGvHYMOoi70g==', N'T422TZGFXSG5I5XM2PF6WPYHWGNKAFYH', N'04d49dd9-89be-430a-9271-d3f5b31a7b61', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'b82f38fe-3b44-4d8d-b638-6481ff501c94', N'hiepdz@gmail.com', N'HIEPDZ@GMAIL.COM', N'hiepdz@gmail.com', N'HIEPDZ@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEATipDE05jeUWvcdRxq0k3cVZvO0kWGHw16XuvKNSI2JQtpmej05rlGs8aP/n83mdg==', N'YDNLBRILQNEOWHFHKPTQV6HIDZUFVKBL', N'9da8c314-59fc-4959-87f5-0998bffc5099', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Blogs] ON 

INSERT [dbo].[Blogs] ([Id], [Title], [Description], [Summary], [AuthorID], [Create_Date], [Image]) VALUES (1, N'Why Lead Generation is Key for Business Growth', N'<h2>It is a long established fact a reader be distracted</h2><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis, eius mollitia suscipit, quisquam doloremque distinctio perferendis et doloribus unde architecto optio laboriosam porro adipisci sapiente officiis nemo accusamus ad praesentium? Esse minima nisi et. Dolore perferendis, enim praesentium omnis, iste doloremque quia officia optio deserunt molestiae voluptates soluta architecto tempora.</p><p><img src="images/image_7.jpg" alt=""></p><p>Molestiae cupiditate inventore animi, maxime sapiente optio, illo est nemo veritatis repellat sunt doloribus nesciunt! Minima laborum magni reiciendis qui voluptate quisquam voluptatem soluta illo eum ullam incidunt rem assumenda eveniet eaque sequi deleniti tenetur dolore amet fugit perspiciatis ipsa, odit. Nesciunt dolor minima esse vero ut ea, repudiandae suscipit!</p><h2>#2. Creative WordPress Themes</h2><p>Temporibus ad error suscipit exercitationem hic molestiae totam obcaecati rerum, eius aut, in. Exercitationem atque quidem tempora maiores ex architecto voluptatum aut officia doloremque. Error dolore voluptas, omnis molestias odio dignissimos culpa ex earum nisi consequatur quos odit quasi repellat qui officiis reiciendis incidunt hic non? Debitis commodi aut, adipisci.</p><p><img src="images/image_8.jpg" alt=""></p><p>Quisquam esse aliquam fuga distinctio, quidem delectus veritatis reiciendis. Nihil explicabo quod, est eos ipsum. Unde aut non tenetur tempore, nisi culpa voluptate maiores officiis quis vel ab consectetur suscipit veritatis nulla quos quia aspernatur perferendis, libero sint. Error, velit, porro. Deserunt minus, quibusdam iste enim veniam, modi rem maiores.</p><p>Odit voluptatibus, eveniet vel nihil cum ullam dolores laborum, quo velit commodi rerum eum quidem pariatur! Quia fuga iste tenetur, ipsa vel nisi in dolorum consequatur, veritatis porro explicabo soluta commodi libero voluptatem similique id quidem? Blanditiis voluptates aperiam non magni. Reprehenderit nobis odit inventore, quia laboriosam harum excepturi ea.</p><p>Adipisci vero culpa, eius nobis soluta. Dolore, maxime ullam ipsam quidem, dolor distinctio similique asperiores voluptas enim, exercitationem ratione aut adipisci modi quod quibusdam iusto, voluptates beatae iure nemo itaque laborum. Consequuntur et pariatur totam fuga eligendi vero dolorum provident. Voluptatibus, veritatis. Beatae numquam nam ab voluptatibus culpa, tenetur recusandae!</p>', N'A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.', N'b82f38fe-3b44-4d8d-b638-6481ff501c94', CAST(N'2023-08-23T09:57:07.0768932' AS DateTime2), N'https://hips.hearstapps.com/hmg-prod/images/img-1082-64e3945a1fe84.jpg?crop=1xw:1xh;center,top&resize=980:*')
INSERT [dbo].[Blogs] ([Id], [Title], [Description], [Summary], [AuthorID], [Create_Date], [Image]) VALUES (2, N'VinFast VF9 Earns 330-Mile EPA-Estimated Range, Deliveries Start This Year', N'<ul><li><strong>VinFast, an EV startup from Vietnam, revealed EPA range estimates for its second model, the </strong><a href="https://www.caranddriver.com/vinfast/vf9"><strong>three-row VF9 SUV</strong></a><strong>.</strong></li><li><strong>The VF9 Eco is rated at 330 miles of range per charge, while the Plus model has a 291-mile estimate.</strong></li><li><strong>Deliveries are planned for the fourth quarter of this year, with the Eco starting at $83K and the Plus at $91K, before destination fees.</strong></li></ul><p>VinFast is on a roll. The Vietnamese automaker delivered the first 45 <a href="https://www.caranddriver.com/vinfast/vf8"><strong>VF8 SUVs</strong></a> to Californian customers in March. Last week, VinFast completed a merger with a special-purpose acquisition company, allowing the company to be listed on the NASDAQ stock exchange. Its stock has since soared, giving the EV maker a market capitalization greater than Ford and General Motors combined at the time of writing. VinFast is now readying its second model for the United States, announcing official EPA range estimates for the VF9 SUV.</p><h2>VinFast VF9 Estimated Range</h2><p>The VinFast VF9 Eco trim level is expected to travel 330 miles on a charge, and the Plus model is expected to go 291 miles. The company previously said the VF9 would be offered with two battery sizes, a Standard Range pack and an Enhanced Range unit. It didn''t specify which battery was responsible for the EPA-estimated figures, but since VinFast claims it outperformed its own estimates, we presume the data is for the Standard Range, which VinFast initially predicted would provide between 262 and 272 miles.<br>&nbsp;</p><figure class="image"><img src="https://hips.hearstapps.com/hmg-prod/images/vf9-13241-64e519c008b9b.jpg?crop=1.00xw:0.918xh;0,0.0485xh&amp;resize=980:*" alt="2024 vinfast vf9" srcset="https://hips.hearstapps.com/hmg-prod/images/vf9-13241-64e519c008b9b.jpg?crop=1.00xw:0.918xh;0,0.0485xh&amp;resize=640:* 640w, https://hips.hearstapps.com/hmg-prod/images/vf9-13241-64e519c008b9b.jpg?crop=1.00xw:0.918xh;0,0.0485xh&amp;resize=768:* 980w, https://hips.hearstapps.com/hmg-prod/images/vf9-13241-64e519c008b9b.jpg?crop=1.00xw:0.918xh;0,0.0485xh&amp;resize=980:* 1120w, https://hips.hearstapps.com/hmg-prod/images/vf9-13241-64e519c008b9b.jpg?crop=1.00xw:0.918xh;0,0.0485xh&amp;resize=980:* 1200w, https://hips.hearstapps.com/hmg-prod/images/vf9-13241-64e519c008b9b.jpg?crop=1.00xw:0.918xh;0,0.0485xh&amp;resize=980:* 1920w" sizes="100vw" width="2048"></figure><p>VINFAST</p><p>The preliminary guesses for the Enhanced Range model were between 360 and 369 miles, and VinFast''s consumer website now only lists one battery option. Confusingly, the pack listed on the consumer site is a 123.0-kWh unit, which the official press site lists as the Enhanced Range battery. <i>Car and Driver</i> reached out to VinFast for confirmation on which battery pack returned these range estimates. We''ll update this story if we hear back.</p><h2>VF9 Pricing</h2><p>VinFast also revealed updated pricing for the VF9, which will start at $83,000 for the Eco and $91,000 for the Plus, before destination fees. This is roughly $6000 more than the previously revealed prices for both models, and puts it on par with the <a href="https://www.caranddriver.com/rivian/r1s"><strong>three-row Rivian R1S</strong></a>, which returns either 260 or 352 miles per charge, depending on the battery pack. The segment will be joined by the pricier <a href="https://www.caranddriver.com/cadillac/escalade-iq"><strong>2025 Cadillac Escalade IQ</strong></a>, which is targeting a 450-mile rating and will also have to contend with the significantly cheaper <a href="https://www.caranddriver.com/kia/ev9"><strong>three-row Kia EV9</strong></a> that should get up to 300 miles of range.</p><figure class="image"><img src="https://hips.hearstapps.com/hmg-prod/images/vfe36-lookdev-016-extgray-intbeige-interior-side-3-0000-64e51a186fbec.png?crop=0.915xw:0.994xh;0.0850xw,0&amp;resize=980:*" alt="2024 vinfast vf9" srcset="https://hips.hearstapps.com/hmg-prod/images/vfe36-lookdev-016-extgray-intbeige-interior-side-3-0000-64e51a186fbec.png?crop=0.915xw:0.994xh;0.0850xw,0&amp;resize=640:* 640w, https://hips.hearstapps.com/hmg-prod/images/vfe36-lookdev-016-extgray-intbeige-interior-side-3-0000-64e51a186fbec.png?crop=0.915xw:0.994xh;0.0850xw,0&amp;resize=768:* 980w, https://hips.hearstapps.com/hmg-prod/images/vfe36-lookdev-016-extgray-intbeige-interior-side-3-0000-64e51a186fbec.png?crop=0.915xw:0.994xh;0.0850xw,0&amp;resize=980:* 1120w, https://hips.hearstapps.com/hmg-prod/images/vfe36-lookdev-016-extgray-intbeige-interior-side-3-0000-64e51a186fbec.png?crop=0.915xw:0.994xh;0.0850xw,0&amp;resize=980:* 1200w, https://hips.hearstapps.com/hmg-prod/images/vfe36-lookdev-016-extgray-intbeige-interior-side-3-0000-64e51a186fbec.png?crop=0.915xw:0.994xh;0.0850xw,0&amp;resize=980:* 1920w" sizes="100vw" width="1920"></figure><p>VINFAST</p><p>The VF9''s battery feeds to two electric motors churning out a combined 402 horsepower and 457 pound-feet of torque. VinFast claims a zero-to-60-mph time of 6.5 seconds and says the VF9 will charge from 10 to 70 percent in 35 minutes on a DC fast-charger. VinFast has already begun deliveries of the VF9 in Vietnam and aims to start putting North American customers behind the wheel of the three-row EV in the fourth quarter of this year.</p>', N'The Vietnamese startup announced official EPA ratings for the three-row VF9 crossover, with the more expensive Plus model returning a 291-mile estimate.', N'b82f38fe-3b44-4d8d-b638-6481ff501c94', CAST(N'2023-08-23T10:08:06.6130741' AS DateTime2), N'https://hips.hearstapps.com/hmg-prod/images/vinfast-vf9-low-022-jpg-64e518b2a4282.jpg?crop=0.628xw:0.531xh;0.255xw,0.393xh&resize=1200:*')
INSERT [dbo].[Blogs] ([Id], [Title], [Description], [Summary], [AuthorID], [Create_Date], [Image]) VALUES (3, N'Ferrari 812 Competizione Tailor Made Is a Sketch Artist''s Dream', N'<ul><li><strong>The Ferrari 812 Competizione Tailor Made is one of just 999 models, and its body art is completely unique.</strong></li><li><strong>Inspired by the blank-sheet design process, it has matte yellow paint on which sketch-like details are traced—the same goes for the interior.</strong></li><li><strong>The one-off car debuted during </strong><a href="https://www.caranddriver.com/pebble-beach-auto-show/"><strong>Monterey Car Week</strong></a><strong> and will be auctioned for charity on October 17 at the Ferrari Gala in New York City.</strong></li></ul><p>It''s one thing to have your friends draw on your face with a permanent marker, it''s another to take a Sharpie to a $600K-plus exotic sports car. While one look at the Ferrari 812 Competizione Tailor Made might make you think such a tragedy occurred, rest assured that''s not actually the case.</p><p>Instead, the yellow V-12—powered coupe with black markings all over its body is a one-of-a-kind creation that celebrates the Italian automaker''s design process. Inspired by the a blank-sheet design process, specifically the work of Ferrari''s chief design officer, Flavio Manzoni, the company''s stylists and its Tailor Made customizing division worked together for over a year on this one-off 812.</p><figure class="image"><img src="https://hips.hearstapps.com/hmg-prod/images/ferrari-812-comp-tm-05-64e3ccf48eeb2.jpg?crop=0.844xw:0.412xh;0.0731xw,0.286xh&amp;resize=980:*" alt="ferrari 812 competizione tailor made" srcset="https://hips.hearstapps.com/hmg-prod/images/ferrari-812-comp-tm-05-64e3ccf48eeb2.jpg?crop=0.844xw:0.412xh;0.0731xw,0.286xh&amp;resize=640:* 640w, https://hips.hearstapps.com/hmg-prod/images/ferrari-812-comp-tm-05-64e3ccf48eeb2.jpg?crop=0.844xw:0.412xh;0.0731xw,0.286xh&amp;resize=768:* 980w, https://hips.hearstapps.com/hmg-prod/images/ferrari-812-comp-tm-05-64e3ccf48eeb2.jpg?crop=0.844xw:0.412xh;0.0731xw,0.286xh&amp;resize=980:* 1120w, https://hips.hearstapps.com/hmg-prod/images/ferrari-812-comp-tm-05-64e3ccf48eeb2.jpg?crop=0.844xw:0.412xh;0.0731xw,0.286xh&amp;resize=980:* 1200w, https://hips.hearstapps.com/hmg-prod/images/ferrari-812-comp-tm-05-64e3ccf48eeb2.jpg?crop=0.844xw:0.412xh;0.0731xw,0.286xh&amp;resize=980:* 1920w" sizes="100vw" width="6000"></figure><p>FERRARI</p><p>The resulting car is shown in these photos wearing matte Giallo Tristrato (yellow) paint with details traced in matte Nero DS Sketch. They highlight bits such as the aero-blade that bisects the hood, the side louvres, and the vortex generators on the rear panel. The Sharpie-like aesthetic continues inside, with the 812''s cabin covered in Alcantara that has design sketches embroidered into the seats as well as the dashboard.</p><figure class="image"><img src="https://hips.hearstapps.com/hmg-prod/images/ferrari-812-comp-tm-11-64e3ccf5ceca4.jpg?crop=1.00xw:0.814xh;0,0.0882xh&amp;resize=980:*" alt="ferrari 812 competizione tailor made" srcset="https://hips.hearstapps.com/hmg-prod/images/ferrari-812-comp-tm-11-64e3ccf5ceca4.jpg?crop=1.00xw:0.814xh;0,0.0882xh&amp;resize=640:* 640w, https://hips.hearstapps.com/hmg-prod/images/ferrari-812-comp-tm-11-64e3ccf5ceca4.jpg?crop=1.00xw:0.814xh;0,0.0882xh&amp;resize=768:* 980w, https://hips.hearstapps.com/hmg-prod/images/ferrari-812-comp-tm-11-64e3ccf5ceca4.jpg?crop=1.00xw:0.814xh;0,0.0882xh&amp;resize=980:* 1120w, https://hips.hearstapps.com/hmg-prod/images/ferrari-812-comp-tm-11-64e3ccf5ceca4.jpg?crop=1.00xw:0.814xh;0,0.0882xh&amp;resize=980:* 1200w, https://hips.hearstapps.com/hmg-prod/images/ferrari-812-comp-tm-11-64e3ccf5ceca4.jpg?crop=1.00xw:0.814xh;0,0.0882xh&amp;resize=980:* 1920w" sizes="100vw" width="5164"></figure><p>FERRARI</p><p>For those curious about the Ferrari 812 Competizione that is the basis for this work of art, it''s an <a href="https://www.caranddriver.com/reviews/a38199993/2022-ferrari-812-competizione-drive/"><strong>819-hp farewell to the brand''s nonhybrid V-12</strong></a>. Only 999 will be built, with a price tag north of $600,000. This custom Tailor Made example is one of those limited numbers, and while it is virtually priceless, it''ll be auctioned off for charity on October 17 at the Ferrari Gala in New York City.</p>', N'Inspired by a blank-sheet design process, this one-off V-12 Ferrari also looks like someone went buck wild with a Sharpie.', N'b82f38fe-3b44-4d8d-b638-6481ff501c94', CAST(N'2023-08-23T10:09:10.4508055' AS DateTime2), N'https://hips.hearstapps.com/hmg-prod/images/ferrari-812-comp-tm-hero-64e3ccf9971d5.jpg?crop=0.687xw:0.964xh;0.155xw,0&resize=980:*')
INSERT [dbo].[Blogs] ([Id], [Title], [Description], [Summary], [AuthorID], [Create_Date], [Image]) VALUES (4, N'2023 Bentley Continental GT Speed One-Off Celebrates the OG', N'<ul><li><strong>This one-off </strong><a href="https://www.caranddriver.com/bentley/continental-gt-2023"><strong>2023 Bentley Continental GT Speed</strong></a><strong>, created by the brand''s Mulliner customizing division, celebrates the original car.</strong></li><li><strong>To match the spec of the OG Conti, the new version wears Cypress Green paint and a Saddle leather interior.</strong></li><li><strong>The one-of-one Continental GT Speed was sold to an American collector and displayed at this year''s </strong><a href="https://www.caranddriver.com/pebble-beach-auto-show/"><strong>Pebble Beach Concours d''Elegance</strong></a><strong>.</strong></li></ul><p>The original 2003 Bentley Continental GT helped the ultra-luxury brand go from surviving to thriving. Not only was it a huge sales success right out of the gate, but the <a href="https://www.caranddriver.com/reviews/a15133937/bentley-continental-gt-first-drive-review/"><strong>OG Conti was the first modern Bentley</strong></a>—as it was designed and developed under the umbrella of the Volkswagen Group. To celebrate the nameplate''s significance for its 20th birthday, Bentley has commissioned a one-of-a-kind 2023 Continental GT Speed.</p><p>Created by Bentley''s Mulliner customizing division, the tribute Continental GT is spec''d like the very first production model. The new coupe features Cypress Green paint, and its interior has Saddle leather upholstery with Burr Walnut trim. The cabin also has a couple of exclusive contemporary touches, including "Special Green" contrast stitching and matching striping on the doors, seats, and center console sides. There''s also a plaque that reads, "20 years of the Continental."</p><figure class="image"><img src="https://hips.hearstapps.com/hmg-prod/images/one-of-one-gt-speed-3-64e3c08b8129b.jpg?crop=0.791xw:0.724xh;0.0289xw,0.0638xh&amp;resize=980:*" alt="2023 bentley continental gt speed one off rear driving shot" srcset="https://hips.hearstapps.com/hmg-prod/images/one-of-one-gt-speed-3-64e3c08b8129b.jpg?crop=0.791xw:0.724xh;0.0289xw,0.0638xh&amp;resize=640:* 640w, https://hips.hearstapps.com/hmg-prod/images/one-of-one-gt-speed-3-64e3c08b8129b.jpg?crop=0.791xw:0.724xh;0.0289xw,0.0638xh&amp;resize=768:* 980w, https://hips.hearstapps.com/hmg-prod/images/one-of-one-gt-speed-3-64e3c08b8129b.jpg?crop=0.791xw:0.724xh;0.0289xw,0.0638xh&amp;resize=980:* 1120w, https://hips.hearstapps.com/hmg-prod/images/one-of-one-gt-speed-3-64e3c08b8129b.jpg?crop=0.791xw:0.724xh;0.0289xw,0.0638xh&amp;resize=980:* 1200w, https://hips.hearstapps.com/hmg-prod/images/one-of-one-gt-speed-3-64e3c08b8129b.jpg?crop=0.791xw:0.724xh;0.0289xw,0.0638xh&amp;resize=980:* 1920w" sizes="100vw" width="1920"></figure><p>BENTLEY</p><p>Like the first-generation car, the Continental GT Speed is exclusively powered by a twin-turbocharged 6.0-liter W-12. While its predecessor produced a hefty 552 horsepower and 479 pound-feet of torque, the latest—and last—version of the unique engine produces a prodigious 650 horses and 664 pound-feet. That power is routed through an eight-speed dual-clutch automatic that feeds all four wheels, which on the one-off car are Dark Grey Satin 22-inchers.</p><figure class="image"><img src="https://hips.hearstapps.com/hmg-prod/images/one-of-one-gt-speed-7-64e3c0f8cc9b1.jpg?crop=1.00xw:0.916xh;0,0.0534xh&amp;resize=980:*" alt="2023 bentley continental gt speed one off interior" srcset="https://hips.hearstapps.com/hmg-prod/images/one-of-one-gt-speed-7-64e3c0f8cc9b1.jpg?crop=1.00xw:0.916xh;0,0.0534xh&amp;resize=640:* 640w, https://hips.hearstapps.com/hmg-prod/images/one-of-one-gt-speed-7-64e3c0f8cc9b1.jpg?crop=1.00xw:0.916xh;0,0.0534xh&amp;resize=768:* 980w, https://hips.hearstapps.com/hmg-prod/images/one-of-one-gt-speed-7-64e3c0f8cc9b1.jpg?crop=1.00xw:0.916xh;0,0.0534xh&amp;resize=980:* 1120w, https://hips.hearstapps.com/hmg-prod/images/one-of-one-gt-speed-7-64e3c0f8cc9b1.jpg?crop=1.00xw:0.916xh;0,0.0534xh&amp;resize=980:* 1200w, https://hips.hearstapps.com/hmg-prod/images/one-of-one-gt-speed-7-64e3c0f8cc9b1.jpg?crop=1.00xw:0.916xh;0,0.0534xh&amp;resize=980:* 1920w" sizes="100vw" width="1920"></figure><p>BENTLEY</p><p>The commemorative 2023 Bentley Continental GT Speed has already been spoken for. While its expected exorbitant selling price is being kept under lock and key, Bentley says it was sold to an American collector, who took possession of the car at The Quail at this year''s Pebble Beach Concours d''Elegance, where it was also on display.</p>', N'The commemorative Conti is spec''d like the very first production model, with Cypress Green paint and a Saddle leather interior.', N'b82f38fe-3b44-4d8d-b638-6481ff501c94', CAST(N'2023-08-23T10:09:53.5912319' AS DateTime2), N'https://hips.hearstapps.com/hmg-prod/images/one-of-one-gt-speed-5-64e38831af920.jpg?crop=0.670xw:1.00xh;0.112xw,0&resize=980:*')
INSERT [dbo].[Blogs] ([Id], [Title], [Description], [Summary], [AuthorID], [Create_Date], [Image]) VALUES (5, N'Ultra-Exclusive $370K Carmel Edition Ritzes Up the 2024 Range Rover', N'<ul><li><strong>Land Rover has unveiled a new special-edition version of the 2024 Range Rover called the Carmel Edition.</strong></li><li><strong>It''s finished in an exclusive white exterior paint and has interior bits including tan and maroon leather and ceramic trim pieces.</strong></li><li><strong>It stickers for $371,475 and only seven units will be produced.</strong></li></ul><p>Range Rover SUVs already reach into the upper echelons of price and exclusivity with their $200,000+ SV models that offer a wide range of customization options, but this new Carmel Edition goes even higher. Revealed at <a href="https://www.caranddriver.com/pebble-beach-auto-show/"><strong>Monterey Car Week 2023</strong></a>, this new version of the <a href="https://www.caranddriver.com/land-rover/range-rover"><strong>2024 Range Rover</strong></a> stickers for $371,475 and only seven will be built specially for those who were invited to the Range Rover House experience in California.</p><p>The Carmel Edition is based on the top <a href="https://www.caranddriver.com/news/a43919499/2024-land-rover-range-rover-updates-sv-model/"><strong>long-wheelbase SV model</strong></a> with the 606-hp version of the twin-turbo 4.4-liter V-8 engine. Its unique exterior and interior treatments are surprisingly subtle, starting with the SV Bespoke Special Effect Gloss white paint and the 23-inch wheels with white inserts. Inside, it features the four-seat interior with a fold-out table and a fridge, and the cabin is finished in two-tone Perlino and Deep Garnet leather. There''s also Cream Ash Burr veneer and white ceramic trim, along with Pearl Oyster accents, embroidered cushions, and door sills denoting the special edition as one of seven.</p><figure class="image"><img src="https://hips.hearstapps.com/hmg-prod/images/2024-range-rover-carmel-edition-door-panel-64e24b61b24f8.jpg?resize=980:*" alt="2024 range rover carmel edition" srcset="https://hips.hearstapps.com/hmg-prod/images/2024-range-rover-carmel-edition-door-panel-64e24b61b24f8.jpg?resize=640:* 640w, https://hips.hearstapps.com/hmg-prod/images/2024-range-rover-carmel-edition-door-panel-64e24b61b24f8.jpg?resize=768:* 980w, https://hips.hearstapps.com/hmg-prod/images/2024-range-rover-carmel-edition-door-panel-64e24b61b24f8.jpg?resize=980:* 1120w, https://hips.hearstapps.com/hmg-prod/images/2024-range-rover-carmel-edition-door-panel-64e24b61b24f8.jpg?resize=980:* 1200w, https://hips.hearstapps.com/hmg-prod/images/2024-range-rover-carmel-edition-door-panel-64e24b61b24f8.jpg?resize=980:* 1920w" sizes="100vw" width="4000"></figure><p>LAND ROVER</p><figure class="image"><img src="https://hips.hearstapps.com/hmg-prod/images/2024-range-rover-carmel-edition-door-sill-64e24b61222ff.jpg?resize=980:*" alt="2024 range rover carmel edition" srcset="https://hips.hearstapps.com/hmg-prod/images/2024-range-rover-carmel-edition-door-sill-64e24b61222ff.jpg?resize=640:* 640w, https://hips.hearstapps.com/hmg-prod/images/2024-range-rover-carmel-edition-door-sill-64e24b61222ff.jpg?resize=768:* 980w, https://hips.hearstapps.com/hmg-prod/images/2024-range-rover-carmel-edition-door-sill-64e24b61222ff.jpg?resize=980:* 1120w, https://hips.hearstapps.com/hmg-prod/images/2024-range-rover-carmel-edition-door-sill-64e24b61222ff.jpg?resize=980:* 1200w, https://hips.hearstapps.com/hmg-prod/images/2024-range-rover-carmel-edition-door-sill-64e24b61222ff.jpg?resize=980:* 1920w" sizes="100vw" width="4000"></figure><p>LAND ROVER</p><p>For all the extra money that the Carmel Edition costs over the standard $235,475 Range Rover SV model, these lucky seven buyers do get a set of Titleist golf clubs and other bits of Range Rover swag. Land Rover also says that a portion of the money from the sale of these vehicles will be donated to the Monterey Bay National Marine Sanctuary.</p>', N'Only seven units of this special SV Range Rover will be produced in a unique white exterior paint with maroon, tan, and oyster trim on the inside.', N'b82f38fe-3b44-4d8d-b638-6481ff501c94', CAST(N'2023-08-23T10:10:45.2276842' AS DateTime2), N'https://hips.hearstapps.com/hmg-prod/images/2024-range-rover-carmel-edition-64e24b63616c3.jpg?crop=1.00xw:0.451xh;0,0.426xh&resize=1200:*')
INSERT [dbo].[Blogs] ([Id], [Title], [Description], [Summary], [AuthorID], [Create_Date], [Image]) VALUES (6, N'The Coolest Cars We Saw at the 2023 Woodward Dream Cruise', N'<p>On any given summer night, Detroit''s Woodward Avenue becomes a hot spot for shiny sports cars and brawny muscle cars revving their engines and engaging in vehicular hooliganism. But once a year, the boulevard is swarmed by tens of thousands of car enthusiasts for the <a href="https://www.caranddriver.com/news/g40968181/2022-woodward-dream-cruise-coolest-cars/"><strong>Woodward Dream Cruise</strong></a>, a moving car show that takes place on public roads, allowing anyone to join in the fun. A wide variety of vehicles show up, from slinky exotics to iconic American muscle and right-hand-drive Japanese imports. Here''s a selection of some of the coolest vehicles we spotted at the 2023 Woodward Dream Cruise.</p><p>ADVERTISEMENT - CONTINUE READING BELOW</p><p><img src="https://hips.hearstapps.com/hmg-prod/images/img-1244-edit-64e36fbf460a4.jpg?crop=1xw:1xh;center,top&amp;resize=980:*" alt="ferrari monza sp2" srcset="https://hips.hearstapps.com/hmg-prod/images/img-1244-edit-64e36fbf460a4.jpg?crop=1xw:1xh;center,top&amp;resize=640:* 640w, https://hips.hearstapps.com/hmg-prod/images/img-1244-edit-64e36fbf460a4.jpg?crop=1xw:1xh;center,top&amp;resize=980:* 980w" sizes="100vw" width="4895">CALEB MILLER|CAR AND DRIVER</p><p>The arrival of the <a href="https://www.caranddriver.com/news/a23304013/ferrari-monza-speedster-barchetta-limited-edition/"><strong>Ferrari Monza SP2</strong></a> in 2018 set off a wave of new open-air supercars like the <a href="https://www.caranddriver.com/reviews/a36520328/2021-aston-martin-v12-speedster-drive/"><strong>Aston Martin V12 Speedster</strong></a> and <a href="https://www.caranddriver.com/news/a29774505/mclaren-elva-photos-info/"><strong>McLaren Elva</strong></a>, but the Monza has remained the prettiest of the modern speedsters. Also sold as a single-seater SP1, the windshield-less look references 1950s race cars and makes the Monza look especially low to the ground. Under the hood lives a 6.5-liter V-12 producing 799 horsepower. Ferrari built fewer than 500 Monzas, and each cost around $1.75 million.</p><p>&nbsp;</p><p><img src="https://hips.hearstapps.com/hmg-prod/images/img-1360-edit-64e3706b703af.jpg?crop=1xw:1xh;center,top&amp;resize=980:*" alt="lamborghini espada" srcset="https://hips.hearstapps.com/hmg-prod/images/img-1360-edit-64e3706b703af.jpg?crop=1xw:1xh;center,top&amp;resize=640:* 640w, https://hips.hearstapps.com/hmg-prod/images/img-1360-edit-64e3706b703af.jpg?crop=1xw:1xh;center,top&amp;resize=980:* 980w" sizes="100vw" width="4848">CALEB MILLER|CAR AND DRIVER</p><p>Tucked away behind a building was one of the stars of the show, this white Lamborghini Espada. Production of this two-door, four-seat grand tourer started in 1968 and lasted 10 years, but only 1227 were made in that span. The Espada''s stunningly long hood hides a 3.9-liter V-12 which produced 350 horsepower, and this example was fitted with a five-speed manual.</p><p>&nbsp;</p><p><img src="https://hips.hearstapps.com/hmg-prod/images/img-1112-edit-64e3715349333.jpg?crop=1xw:1xh;center,top&amp;resize=980:*" alt="dodge li''l red express" srcset="https://hips.hearstapps.com/hmg-prod/images/img-1112-edit-64e3715349333.jpg?crop=1xw:1xh;center,top&amp;resize=640:* 640w, https://hips.hearstapps.com/hmg-prod/images/img-1112-edit-64e3715349333.jpg?crop=1xw:1xh;center,top&amp;resize=980:* 980w" sizes="100vw" width="4738">CALEB MILLER|CAR AND DRIVER</p><p>The Dodge Li''l Red Express, launched as a special edition for the D-series truck in 1978, packed serious muscle for the time, with 225 horsepower from its 5.9-liter (360-cubic-inch) V-8. In <i>Car and Driver</i> testing, the truck became the quickest domestic vehicle at the time to hit 100 mph from a standstill. But the Li''l Red Express was just as much about the look, with exhaust stacks towering behind the cab like a semi truck, an oak-paneled bed with a wood-lined floor, and gold graphics on the doors.</p><p>&nbsp;</p><p><img src="https://hips.hearstapps.com/hmg-prod/images/img-1423-edit-64e372492d7ce.jpg?crop=1xw:1xh;center,top&amp;resize=980:*" alt="porsche 918 spyder" srcset="https://hips.hearstapps.com/hmg-prod/images/img-1423-edit-64e372492d7ce.jpg?crop=1xw:1xh;center,top&amp;resize=640:* 640w, https://hips.hearstapps.com/hmg-prod/images/img-1423-edit-64e372492d7ce.jpg?crop=1xw:1xh;center,top&amp;resize=980:* 980w" sizes="100vw" width="4937">CALEB MILLER|CAR AND DRIVER</p><p>The 887-hp plug-in-hybrid <a href="https://www.caranddriver.com/reviews/a15111832/2015-porsche-918-spyder-first-drive-review/"><strong>Porsche 918 Spyder</strong></a> debuted at the same time as McLaren''s 903-hp <a href="https://www.caranddriver.com/reviews/a15108986/2014-mclaren-p1-test-review/"><strong>P1</strong></a> and Ferrari''s 950-hp <a href="https://www.caranddriver.com/reviews/a15107243/ferrari-laferrari-hypercar-tested-review/"><strong>LaFerrari</strong></a> in 2013, the three plug-in dream machines earning the nickname the Holy Trinity. While the others made more power, the 918 knew how to transfer that oomph to the pavement, becoming the quickest car in <i>Car and Driver</i> testing at the time with a <a href="https://www.caranddriver.com/features/a15111035/the-2015-porsche-918-spyder-is-the-quickest-road-car-in-the-world-feature/"><strong>2.2-second blast to 60 mph</strong></a>. Only 918 were built.</p><p>&nbsp;</p><p><img src="https://hips.hearstapps.com/hmg-prod/images/img-1176-edit-64e3740b6657f.jpg?crop=1xw:1xh;center,top&amp;resize=980:*" alt="ford model t" srcset="https://hips.hearstapps.com/hmg-prod/images/img-1176-edit-64e3740b6657f.jpg?crop=1xw:1xh;center,top&amp;resize=640:* 640w, https://hips.hearstapps.com/hmg-prod/images/img-1176-edit-64e3740b6657f.jpg?crop=1xw:1xh;center,top&amp;resize=980:* 980w" sizes="100vw" width="5115">CALEB MILLER|CAR AND DRIVER</p><p>The Ford Model T obviously doesn''t have the performance chops of the other cars on this list, but its historical significance is indisputable. The iconic "Tin Lizzie" wasn''t rare either, with Ford selling over 15 million units. But it''s always a treat to see such an old machine out on the road, and as we learned last year, <a href="https://www.caranddriver.com/features/a42319380/ford-model-t-learning-to-drive/"><strong>they are surprisingly challenging to drive</strong></a>.</p><p>&nbsp;</p><p><img src="https://hips.hearstapps.com/hmg-prod/images/img-1426-edit-64e3754a624a3.jpg?crop=1xw:1xh;center,top&amp;resize=980:*" alt="porsche 911 gt3 rs" srcset="https://hips.hearstapps.com/hmg-prod/images/img-1426-edit-64e3754a624a3.jpg?crop=1xw:1xh;center,top&amp;resize=640:* 640w, https://hips.hearstapps.com/hmg-prod/images/img-1426-edit-64e3754a624a3.jpg?crop=1xw:1xh;center,top&amp;resize=980:* 980w" sizes="100vw" width="4971">CALEB MILLER|CAR AND DRIVER</p><p>The <a href="https://www.caranddriver.com/news/a40778771/2023-porsche-911-gt3-rs-revealed/"><strong>GT3 RS</strong></a> badge has always adorned the most hardcore Porsche 911s, but the latest version is the most extreme yet. The 4.0-liter flat-six''s 518 hp isn''t the most dazzling number among the supercar crowd, but the 911 GT3 RS''s wild aerodynamics—which draw upon Formula 1 with a drag-reduction system on the rear wing—make the GT3 RS a beast around the track. Pricing starts at a cool $225,250.</p><p>&nbsp;</p><p><img src="https://hips.hearstapps.com/hmg-prod/images/img-1392-edit-64e376a936076.jpg?crop=1xw:1xh;center,top&amp;resize=980:*" alt="dodge power wagon" srcset="https://hips.hearstapps.com/hmg-prod/images/img-1392-edit-64e376a936076.jpg?crop=1xw:1xh;center,top&amp;resize=640:* 640w, https://hips.hearstapps.com/hmg-prod/images/img-1392-edit-64e376a936076.jpg?crop=1xw:1xh;center,top&amp;resize=980:* 980w" sizes="100vw" width="5019">CALEB MILLER|CAR AND DRIVER</p><p>Truck lovers also had plenty to be excited about at Woodward, with lots of beautifully restored classics like this Dodge Power Wagon. Not only is the Power Wagon an imposing piece of machinery, but it was also the first production four-wheel-drive pickup when it went on sale in 1946. The burly truck was closely related to military vehicles used in World War II, and production continued into the late 1960s.</p><p>&nbsp;</p><p><img src="https://hips.hearstapps.com/hmg-prod/images/img-1336-edit-64e377cd94ce8.jpg?crop=1xw:1xh;center,top&amp;resize=980:*" alt="lamborghini aventador svj" srcset="https://hips.hearstapps.com/hmg-prod/images/img-1336-edit-64e377cd94ce8.jpg?crop=1xw:1xh;center,top&amp;resize=640:* 640w, https://hips.hearstapps.com/hmg-prod/images/img-1336-edit-64e377cd94ce8.jpg?crop=1xw:1xh;center,top&amp;resize=980:* 980w" sizes="100vw" width="4967">CALEB MILLER|CAR AND DRIVER</p><p>The SVJ model represented the wildest version of Lamborghini''s V-12-powered <a href="https://www.caranddriver.com/lamborghini/aventador"><strong>Aventador</strong></a>, with the 6.5-liter engine cranking out a potent 759 horsepower. The spiky rear wing and flared nostrils in the hood worked in tandem to provide immense downforce while limiting drag. We were especially enamored with the glistening purple paint on this example.</p><p>&nbsp;</p><p><img src="https://hips.hearstapps.com/hmg-prod/images/img-1346-edit-64e37a135fd57.jpg?crop=1xw:1xh;center,top&amp;resize=980:*" alt="lamborghini diablo se30" srcset="https://hips.hearstapps.com/hmg-prod/images/img-1346-edit-64e37a135fd57.jpg?crop=1xw:1xh;center,top&amp;resize=640:* 640w, https://hips.hearstapps.com/hmg-prod/images/img-1346-edit-64e37a135fd57.jpg?crop=1xw:1xh;center,top&amp;resize=980:* 980w" sizes="100vw" width="5184">CALEB MILLER|CAR AND DRIVER</p><p>Just a few cars down in the same lot, we stumbled upon another purple Lamborghini, this time a <a href="https://www.caranddriver.com/reviews/a15139938/2001-lamborghini-diablo-vt-60-road-test-review/"><strong>Diablo</strong></a> SE30 in a softer hue. This special edition celebrated Lamborghini''s 30th anniversary and brought unique bodywork and a horsepower boost to 523 ponies from the 5.7-liter V-12. Just 150 Diablo SE30s were built.</p><p>&nbsp;</p><p><img src="https://hips.hearstapps.com/hmg-prod/images/img-1228-edit-64e37c6bb2572.jpg?crop=1xw:1xh;center,top&amp;resize=980:*" alt="lincoln continental" srcset="https://hips.hearstapps.com/hmg-prod/images/img-1228-edit-64e37c6bb2572.jpg?crop=1xw:1xh;center,top&amp;resize=640:* 640w, https://hips.hearstapps.com/hmg-prod/images/img-1228-edit-64e37c6bb2572.jpg?crop=1xw:1xh;center,top&amp;resize=980:* 980w" sizes="100vw" width="4916">CALEB MILLER|CAR AND DRIVER</p><p>The slab-sided 1961 Lincoln Continental may have been 15 inches shorter than its predecessor, but the luxurious behemoth still stretched over 17 feet. The Continental''s sleek elegance is accentuated by the coach doors and the expansive front end that contained a series of V-8 engines. The light pink color of this example reminds us of Porsche''s Frozen Berry metallic paint that is offered on the electric Taycan.</p><p>&nbsp;</p><p><img src="https://hips.hearstapps.com/hmg-prod/images/img-1471-edit-64e37eb5113fe.jpg?crop=1xw:1xh;center,top&amp;resize=980:*" alt="ford bronco dr" srcset="https://hips.hearstapps.com/hmg-prod/images/img-1471-edit-64e37eb5113fe.jpg?crop=1xw:1xh;center,top&amp;resize=640:* 640w, https://hips.hearstapps.com/hmg-prod/images/img-1471-edit-64e37eb5113fe.jpg?crop=1xw:1xh;center,top&amp;resize=980:* 980w" sizes="100vw" width="4712">CALEB MILLER|CAR AND DRIVER</p><p>We were shocked to see this limited-production <a href="https://www.caranddriver.com/reviews/a42816364/2023-ford-bronco-desert-racer-drive/"><strong>Ford Bronco DR</strong></a>, especially since the $295,000 off-roader isn''t road legal. Although the DR uses a stock Bronco frame and standard 10-speed automatic gearbox, the V-6 engine was swapped for a Coyote 5.0-liter V-8. Special dampers from Multimatic and 37-inch BFGoodrich tires help absorb bumps as the DR shoots across craggy desert terrain.</p><p>&nbsp;</p><p><img src="https://hips.hearstapps.com/hmg-prod/images/img-1300-edit-64e380bf8fe45.jpg?crop=1xw:1xh;center,top&amp;resize=980:*" alt="de tomaso pantera" srcset="https://hips.hearstapps.com/hmg-prod/images/img-1300-edit-64e380bf8fe45.jpg?crop=1xw:1xh;center,top&amp;resize=640:* 640w, https://hips.hearstapps.com/hmg-prod/images/img-1300-edit-64e380bf8fe45.jpg?crop=1xw:1xh;center,top&amp;resize=980:* 980w" sizes="100vw" width="4760">CALEB MILLER|CAR AND DRIVER</p><p>The <a href="https://www.caranddriver.com/reviews/a15141823/detomaso-pantera-archived-test-review/"><strong>De Tomaso Pantera</strong></a> combined stunning Italian design with American power, housing a series of Ford-sourced V-8s inside its sharp bodywork. The Pantera remained in production for two decades with a little over 7000 produced, but the cleaner styling of the earlier models, like this one, is considered more desirable.</p><p>&nbsp;</p><p><img src="https://hips.hearstapps.com/hmg-prod/images/img-1238-64e38ba4df002.jpg?crop=1xw:1xh;center,top&amp;resize=980:*" alt="bmw m3 cs" srcset="https://hips.hearstapps.com/hmg-prod/images/img-1238-64e38ba4df002.jpg?crop=1xw:1xh;center,top&amp;resize=640:* 640w, https://hips.hearstapps.com/hmg-prod/images/img-1238-64e38ba4df002.jpg?crop=1xw:1xh;center,top&amp;resize=980:* 980w" sizes="100vw" width="4955">CALEB MILLER|CAR AND DRIVER</p><p>The latest <a href="https://www.caranddriver.com/bmw/m3"><strong>BMW M3</strong></a> already featured a polarizing design, but the <a href="https://www.caranddriver.com/news/a42620851/2024-bmw-m3-cs-revealed/"><strong>track-focused CS model</strong></a> takes it even further with black accents on the hood, a redesigned grille with a red border, and a lurid shade of green. A heavy dose of carbon fiber helped shave off around 75 pounds versus a standard M3 Competition, and the 3.0-liter inline six ekes out an extra 40 horsepower for a total of 543 ponies.</p><p>&nbsp;</p><p><img src="https://hips.hearstapps.com/hmg-prod/images/img-1139-64e38c3b5ae21.jpg?crop=1xw:1xh;center,top&amp;resize=980:*" alt="buick lowrider" srcset="https://hips.hearstapps.com/hmg-prod/images/img-1139-64e38c3b5ae21.jpg?crop=1xw:1xh;center,top&amp;resize=640:* 640w, https://hips.hearstapps.com/hmg-prod/images/img-1139-64e38c3b5ae21.jpg?crop=1xw:1xh;center,top&amp;resize=980:* 980w" sizes="100vw" width="4215">CALEB MILLER|CAR AND DRIVER</p><p>Nearly every facet of car culture is on display at the Woodward Dream Cruise, and we saw several posses of lowriders cruising the boulevard, showing off their trick hydraulic systems. Their bouncy theatrics drew cheers from the crowds lining the streets, and once they had parked, we were able to appreciate the meticulous craft that is required to build these ornate custom vehicles.</p><p>&nbsp;</p><p><img src="https://hips.hearstapps.com/hmg-prod/images/img-1480-64e38d1a25f5f.jpg?crop=1xw:1xh;center,top&amp;resize=980:*" alt="porsche 718 cayman gt4 rs" srcset="https://hips.hearstapps.com/hmg-prod/images/img-1480-64e38d1a25f5f.jpg?crop=1xw:1xh;center,top&amp;resize=640:* 640w, https://hips.hearstapps.com/hmg-prod/images/img-1480-64e38d1a25f5f.jpg?crop=1xw:1xh;center,top&amp;resize=980:* 980w" sizes="100vw" width="4912">CALEB MILLER|CAR AND DRIVER</p><p>Porsche finally unleashed the full potential of the <a href="https://www.caranddriver.com/porsche/718-cayman"><strong>Cayman</strong></a> with the GT4 RS model, swiping the 4.0-liter flat-six engine from the 911 GT3. In the Cayman GT4 RS, the 9000-rpm motor releases 493 hp, and a combination of sticky tires and hardcore aerodynamics helped it <a href="https://www.caranddriver.com/reviews/a39819201/2022-porsche-718-cayman-gt4-rs-by-the-numbers/"><strong>pull 1.11 g on the skidpad</strong></a> in <i>Car and Driver</i> testing.</p><p>&nbsp;</p><p><img src="https://hips.hearstapps.com/hmg-prod/images/img-1223-64e38ea98fc81.jpg?crop=1xw:1xh;center,top&amp;resize=980:*" alt="toyota land cruiser 70 series" srcset="https://hips.hearstapps.com/hmg-prod/images/img-1223-64e38ea98fc81.jpg?crop=1xw:1xh;center,top&amp;resize=640:* 640w, https://hips.hearstapps.com/hmg-prod/images/img-1223-64e38ea98fc81.jpg?crop=1xw:1xh;center,top&amp;resize=980:* 980w" sizes="100vw" width="4750">CALEB MILLER|CAR AND DRIVER</p><p>Although the show is dominated by American metal, there were some neat Japanese cars like this Toyota Land Cruiser. Launched in 1984, the 70-series Land Cruiser has been assembled in a diverse array of body styles and with a large cast of different engines. The truck is still in production in the Middle East. That''s where we believe this example was imported from, based on the national emblem of Yemen affixed to the grille.</p><p>&nbsp;</p><p><img src="https://hips.hearstapps.com/hmg-prod/images/img-1444-64e38f3220bfe.jpg?crop=1xw:1xh;center,top&amp;resize=980:*" alt="ferrari sf90 stradale" srcset="https://hips.hearstapps.com/hmg-prod/images/img-1444-64e38f3220bfe.jpg?crop=1xw:1xh;center,top&amp;resize=640:* 640w, https://hips.hearstapps.com/hmg-prod/images/img-1444-64e38f3220bfe.jpg?crop=1xw:1xh;center,top&amp;resize=980:* 980w" sizes="100vw" width="4590">CALEB MILLER|CAR AND DRIVER</p><p>It took until 2021 for the Porsche 918 Spyder to be beaten, when the <a href="https://www.caranddriver.com/ferrari/sf90-stradale"><strong>Ferrari SF90 Stradale</strong></a> <a href="https://www.caranddriver.com/news/a37066187/2021-ferrari-sf90-stradale-60-mph-acceleration/"><strong>dashed to 60 mph in just 2.1 seconds</strong></a> in a <i>Car and Driver</i> test. It shouldn''t have been a surprise, given the plug-in-hybrid V-8 powertrain''s impressive 986-hp output. This example looked especially beautiful in this deep shade of green.</p><p>&nbsp;</p><p><img src="https://hips.hearstapps.com/hmg-prod/images/img-1417-64e3903ef3556.jpg?crop=1xw:1xh;center,top&amp;resize=980:*" alt="bmw m3 e30" srcset="https://hips.hearstapps.com/hmg-prod/images/img-1417-64e3903ef3556.jpg?crop=1xw:1xh;center,top&amp;resize=640:* 640w, https://hips.hearstapps.com/hmg-prod/images/img-1417-64e3903ef3556.jpg?crop=1xw:1xh;center,top&amp;resize=980:* 980w" sizes="100vw" width="4497">CALEB MILLER|CAR AND DRIVER</p><p>The BMW M3 is the sports-sedan benchmark, and the <a href="https://www.caranddriver.com/reviews/a15140693/1988-bmw-m3-road-test-review/"><strong>E30 generation</strong></a> from the 1980s was the genesis. Built to fulfill the homologation requirement to race in Germany''s DTM series, the four-cylinder engine sent 192 horsepower through a five-speed stick shift to the rear wheels. The E30 is now considered among the greatest M3s ever built.</p><p>&nbsp;</p><p><img src="https://hips.hearstapps.com/hmg-prod/images/img-1491-64e3915a8e8f3.jpg?crop=1xw:1xh;center,top&amp;resize=980:*" alt="jaguar xe sv project 8" srcset="https://hips.hearstapps.com/hmg-prod/images/img-1491-64e3915a8e8f3.jpg?crop=1xw:1xh;center,top&amp;resize=640:* 640w, https://hips.hearstapps.com/hmg-prod/images/img-1491-64e3915a8e8f3.jpg?crop=1xw:1xh;center,top&amp;resize=980:* 980w" sizes="100vw" width="4826">CALEB MILLER|CAR AND DRIVER</p><p>Jaguar never really built a true M3 rival off the XE sedan, but it did construct 300 examples of the <a href="https://www.caranddriver.com/reviews/a27655717/2019-jaguar-xe-sv-project-8-by-the-numbers/"><strong>SV Project 8</strong></a>, a stripped-down race car for the road with a 592-hp supercharged V-8. Designed to set a lap record for sedans at the Nürburgring, the SV Project 8 even came with a track package that deleted the rear seats (but kept the rear doors).</p><p>&nbsp;</p><p><img src="https://hips.hearstapps.com/hmg-prod/images/img-1438-64e3921092c2e.jpg?crop=1xw:1xh;center,top&amp;resize=980:*" alt="bentley brooklands" srcset="https://hips.hearstapps.com/hmg-prod/images/img-1438-64e3921092c2e.jpg?crop=1xw:1xh;center,top&amp;resize=640:* 640w, https://hips.hearstapps.com/hmg-prod/images/img-1438-64e3921092c2e.jpg?crop=1xw:1xh;center,top&amp;resize=980:* 980w" sizes="100vw" width="4561">CALEB MILLER|CAR AND DRIVER</p><p>Among the herd of low-slung supercars, the large-and-in-charge <a href="https://www.caranddriver.com/reviews/a15141807/2009-bentley-brooklands-road-test-review/"><strong>Bentley Brooklands</strong></a> stood out. This opulent coupe was related to the Arnage sedan and Azure convertible, and only 550 units were built between 2008 and 2011. A 6.8-liter V-8 fed 530 horsepower through a six-speed automatic to the rear wheels of this $348,085 colossus.</p><p>&nbsp;</p><p><img src="https://hips.hearstapps.com/hmg-prod/images/img-1077-64e39293d1aac.jpg?crop=1xw:1xh;center,top&amp;resize=980:*" alt="2024 ford mustang dark horse" srcset="https://hips.hearstapps.com/hmg-prod/images/img-1077-64e39293d1aac.jpg?crop=1xw:1xh;center,top&amp;resize=640:* 640w, https://hips.hearstapps.com/hmg-prod/images/img-1077-64e39293d1aac.jpg?crop=1xw:1xh;center,top&amp;resize=980:* 980w" sizes="100vw" width="4727">CALEB MILLER|CAR AND DRIVER</p><p>Ford created a new name for the high-performance version of the latest <a href="https://www.caranddriver.com/ford/mustang"><strong>Mustang</strong></a>, and the Dark Horse model certainly looks imposing in person. We just drove a <a href="https://www.caranddriver.com/reviews/a44675712/2024-ford-mustang-dark-horse-drive/"><strong>2024 Mustang Dark Horse</strong></a> for the first time and found it a fitting send-off to the V-8-powered muscle car with its 500-hp 5.0-liter and available six-speed manual.</p><p>&nbsp;</p><p><img src="https://hips.hearstapps.com/hmg-prod/images/img-1418-64e392f19e1b7.jpg?crop=1xw:1xh;center,top&amp;resize=980:*" alt="ford gt" srcset="https://hips.hearstapps.com/hmg-prod/images/img-1418-64e392f19e1b7.jpg?crop=1xw:1xh;center,top&amp;resize=640:* 640w, https://hips.hearstapps.com/hmg-prod/images/img-1418-64e392f19e1b7.jpg?crop=1xw:1xh;center,top&amp;resize=980:* 980w" sizes="100vw" width="4541">CALEB MILLER|CAR AND DRIVER</p><p>Some fans were disappointed when the <a href="https://www.caranddriver.com/reviews/a15716810/ford-gt-full-test-of-the-blue-oval-supercar-review/"><strong>2017 Ford GT</strong></a> debuted with a twin-turbo V-6 instead of the previous generation''s supercharged V-8, but we will always be happy to gaze upon the GT''s stunning bodywork. The GT is incredibly streamlined, with channels cut through the body to help the supercar slice through the air with minimal resistance.</p><p>&nbsp;</p><p><img src="https://hips.hearstapps.com/hmg-prod/images/img-1461-64e3938f65d4c.jpg?crop=1xw:1xh;center,top&amp;resize=980:*" alt="bmw z8" srcset="https://hips.hearstapps.com/hmg-prod/images/img-1461-64e3938f65d4c.jpg?crop=1xw:1xh;center,top&amp;resize=640:* 640w, https://hips.hearstapps.com/hmg-prod/images/img-1461-64e3938f65d4c.jpg?crop=1xw:1xh;center,top&amp;resize=980:* 980w" sizes="100vw" width="4393">CALEB MILLER|CAR AND DRIVER</p><p>The <a href="https://www.caranddriver.com/reviews/a15140319/bmw-z8-short-take-road-test-review/"><strong>BMW Z8</strong></a> wasn''t the best-performing roadster of its era, but it sported an eye-catching design, inspired by the majestic 507 from the 1950s. The 4.9-liter V-8 churned out a healthy 394 hp, enough to rocket the convertible to 60 mph in 4.6 seconds, but the Z8 was always more of a cruising grand tourer than a sharpened canyon carver.</p><p>&nbsp;</p><p><img src="https://hips.hearstapps.com/hmg-prod/images/img-1082-64e3945a1fe84.jpg?crop=1xw:1xh;center,top&amp;resize=980:*" alt="cadillac ct6v" srcset="https://hips.hearstapps.com/hmg-prod/images/img-1082-64e3945a1fe84.jpg?crop=1xw:1xh;center,top&amp;resize=640:* 640w, https://hips.hearstapps.com/hmg-prod/images/img-1082-64e3945a1fe84.jpg?crop=1xw:1xh;center,top&amp;resize=980:* 980w" sizes="100vw" width="5184">CALEB MILLER|CAR AND DRIVER</p><p>Although the <a href="https://www.caranddriver.com/cadillac/ct5-v-blackwing"><strong>Cadillac CT5-V</strong></a> and <a href="https://www.caranddriver.com/cadillac/ct4-v-blackwing"><strong>CT4-V</strong></a> have both been given the Blackwing name for their most extreme versions, only one car ever received the actual Blackwing V-8. The <a href="https://www.caranddriver.com/reviews/a28593850/2020-cadillac-ct6-v-drive/"><strong>CT6-V</strong></a> packed a specially developed 550-hp 4.2-liter V-8, which sent the big sedan to 60 mph in 3.8 seconds. Sadly, the hand-built motor died with the CT6, with only 875 CT6-Vs built over two years.</p><p>&nbsp;</p><p><img src="https://hips.hearstapps.com/hmg-prod/images/dsc01996-64e394f4d2801.jpg?crop=1xw:1xh;center,top&amp;resize=980:*" alt="porsche 356" srcset="https://hips.hearstapps.com/hmg-prod/images/dsc01996-64e394f4d2801.jpg?crop=1xw:1xh;center,top&amp;resize=640:* 640w, https://hips.hearstapps.com/hmg-prod/images/dsc01996-64e394f4d2801.jpg?crop=1xw:1xh;center,top&amp;resize=980:* 980w" sizes="100vw" width="3500">MATTHEW SKWARCZEK|CAR AND DRIVER</p><p>The Porsche 356 represents the birth of the legendary sports car brand, with its pure, curved profile remaining a hallmark of Porsche''s design language to this day. This cream-colored example was particularly pleasing to the eye.</p>', N'The annual automotive pilgrimage to Detroit''s Woodward Avenue brings out everything from exotic supercars like the Porsche 918 to classic trucks like the Dodge Power Wagon.', N'b82f38fe-3b44-4d8d-b638-6481ff501c94', CAST(N'2023-08-23T10:11:49.6111417' AS DateTime2), N'https://hips.hearstapps.com/hmg-prod/images/woodward23-64e396e6cc369.jpg?crop=0.670xw:1.00xh;0.261xw,0&resize=980:*')
SET IDENTITY_INSERT [dbo].[Blogs] OFF
GO
SET IDENTITY_INSERT [dbo].[Cars] ON 

INSERT [dbo].[Cars] ([Id], [Name], [Description], [Image], [Price], [CategoryID], [PropertyID], [FeatureID], [OwnerID]) VALUES (1, N'VinFast Fadil', N'<p>Các đường nét thiết kế mang hơi thở châu Âu hòa quyện cùng những điểm nhấn đặc trưng của tinh thần Việt tạo nên một mẫu hatchback lý tưởng cho đô thị, nhỏ gọn và thông minh, sẵn sàng chinh phục mọi cung đường thành phố.</p>', N'https://shop.vinfastauto.com/on/demandware.static/-/Sites-app_vinfast_vn-Library/default/dw0ac221ee/images/Fadil/Hinh-anh-Mua-xe-VinFast-Fadil-ban-cao-cap-tra-gop-mau-trang-white.png', 50, 1, 1, 1, N'3b284ec0-57b8-4c3e-9824-3e26b0b17d7a')
INSERT [dbo].[Cars] ([Id], [Name], [Description], [Image], [Price], [CategoryID], [PropertyID], [FeatureID], [OwnerID]) VALUES (2, N'VinFast Lux A2.0', N'<p>Sự kết hợp giữa dáng vẻ khỏe khoắn và cấu trúc hoàn hảo của ngoại thất tạo nên điểm nhấn sang trọng nhưng vẫn đầy tinh tế cho LUX A2.0, thổi làn gió mới vào thiết kế đặc hữu của dòng sedan thông thường.</p>', N'https://shop.vinfastauto.com/on/demandware.static/-/Sites-app_vinfast_vn-Library/default/dw1c8f65e8/images/Lux-A/hinh-anh-tra-gop-Lux-A2.0-ban-cao-cap-mau-xanh-luxury-blue.png', 70, 1, 2, 2, N'3b284ec0-57b8-4c3e-9824-3e26b0b17d7a')
INSERT [dbo].[Cars] ([Id], [Name], [Description], [Image], [Price], [CategoryID], [PropertyID], [FeatureID], [OwnerID]) VALUES (3, N'VINFAST LUX SA2.0', N'<p>Đột phá trong từng đường nét thiết kế, đón đầu xu hướng thời thượng nhưng vẫn mang đậm bản sắc Việt, LUX SA2.0 hứa hẹn trở thành một hiện tượng mới trên đường phố, chinh phục mọi ánh nhìn.</p>', N'https://shop.vinfastauto.com/on/demandware.static/-/Sites-app_vinfast_vn-Library/default/dw66cfe2e1/images/Lux-SA/hinh-anh-gia-VinFast-Lux-SA2.0-ban-cao-cap-premium-tra-gop-mau-bac-silver.png', 100, 1, 3, 3, N'3b284ec0-57b8-4c3e-9824-3e26b0b17d7a')
INSERT [dbo].[Cars] ([Id], [Name], [Description], [Image], [Price], [CategoryID], [PropertyID], [FeatureID], [OwnerID]) VALUES (4, N'Vinfast President', N'<p>President là chiếc SUV bề thế với thiết kế sang trọng cùng những đường gân dập nổi, lưới tản nhiệt hình kim cương ấn tượng và 18 lựa chọn màu sơn độc đáo để khẳng định khí chất riêng biệt của chủ nhân.</p>', N'https://shop.vinfastauto.com/on/demandware.static/-/Sites-app_vinfast_vn-Library/default/dw758fe168/images/President/hinh-anh-gia-xe-SUV-VinFast-President-V8-mau-cam-orange.png', 150, 1, 4, 4, N'3b284ec0-57b8-4c3e-9824-3e26b0b17d7a')
INSERT [dbo].[Cars] ([Id], [Name], [Description], [Image], [Price], [CategoryID], [PropertyID], [FeatureID], [OwnerID]) VALUES (5, N'VinFast VF 5', N'<p>VF 5 Plus sở hữu thiết kế hiện đại, trẻ trung, cá tính và nổi bật với các lựa chọn phối màu nội ngoại thất, đảm bảo cá nhân hóa theo phong cách sống, cá tính và sở thích của mỗi khách hàng.</p>', N'https://shop.vinfastauto.com/on/demandware.static/-/Sites-app_vinfast_vn-Library/default/dw2fe2c222/images/PDP/VF5/vf5-3.png', 50, 1, 5, 5, N'3b284ec0-57b8-4c3e-9824-3e26b0b17d7a')
INSERT [dbo].[Cars] ([Id], [Name], [Description], [Image], [Price], [CategoryID], [PropertyID], [FeatureID], [OwnerID]) VALUES (6, N'VinFast VF e34', N'<h2>Ngoại thất hiện đại<br>thu hút mọi ánh nhìn</h2><p>Ngôn ngữ thiết kế "Cân bằng động” giúp xe luôn nổi bật, hiện đại và hướng tới tương lai. Các đường nét cân đối tạo nên sự hài hoà, tượng trưng cho sự chuyển động tiến tới tương lai.</p>', N'https://vinfastotominhdao.vn/wp-content/uploads/De-Sat-Silver-Bac.jpg', 60, 1, 6, 6, N'3b284ec0-57b8-4c3e-9824-3e26b0b17d7a')
INSERT [dbo].[Cars] ([Id], [Name], [Description], [Image], [Price], [CategoryID], [PropertyID], [FeatureID], [OwnerID]) VALUES (7, N'VinFast VF 8', N'<h2>Được thiết kế<br>dành cho bạn</h2><p>Tỉ lệ thiết kế hiện đại định hình bởi triết lý “Cân bằng động”. Những khối cong mềm mại chấm phá bởi các đường cắt sắc nét tạo nên ấn tượng mạnh mẽ, mang đầy hơi thở của tương lai.</p>', N'https://shop.vinfastauto.com/on/demandware.static/-/Sites-app_vinfast_vn-Library/default/dw4d54f126/images/PDP/vf8/img-CE18.webp', 120, 1, 7, 7, N'3b284ec0-57b8-4c3e-9824-3e26b0b17d7a')
INSERT [dbo].[Cars] ([Id], [Name], [Description], [Image], [Price], [CategoryID], [PropertyID], [FeatureID], [OwnerID]) VALUES (8, N'VinFast VF 9', N'<h2>Mạnh mẽ - Bề thế<br>Nâng tầm thời thượng</h2><p>Vóc dáng bề thế của một chiếc SUV cỡ lớn cùng thiết kế giúp tối ưu tính khí động học để gia tăng quãng đường đi được, đem lại những trải nghiệm đẳng cấp.</p>', N'https://shop.vinfastauto.com/on/demandware.static/-/Sites-app_vinfast_vn-Library/default/dwa6fa7521/images/PDP/vf9/img-CE1N.webp', 130, 1, 8, 8, N'3b284ec0-57b8-4c3e-9824-3e26b0b17d7a')
INSERT [dbo].[Cars] ([Id], [Name], [Description], [Image], [Price], [CategoryID], [PropertyID], [FeatureID], [OwnerID]) VALUES (9, N'MAZDA 3', N'<p>Good</p>', N'https://mazdamotors.vn/media/viejhwcw/mazda3_bfvgnak_25d_by3_ext_360_36_png_0036.jpg', 60, 2, 9, 9, N'3b284ec0-57b8-4c3e-9824-3e26b0b17d7a')
INSERT [dbo].[Cars] ([Id], [Name], [Description], [Image], [Price], [CategoryID], [PropertyID], [FeatureID], [OwnerID]) VALUES (10, N'MAZDA 5', N'<p>g</p>', N'https://mazdamotors.vn/media/ewlpw43b/mazv1660_cx-5_g35_akera_awd_rhodium_white_metallic_kdvaaad_1920x1080px_0024.png', 100, 2, 10, 10, N'3b284ec0-57b8-4c3e-9824-3e26b0b17d7a')
INSERT [dbo].[Cars] ([Id], [Name], [Description], [Image], [Price], [CategoryID], [PropertyID], [FeatureID], [OwnerID]) VALUES (11, N'VIOS 1.5E-MT', N'<p>g</p>', N'https://ssa-api.toyotavn.com.vn//VehicleImgs/vios/08265C776115B781B84859DEC2281479.png', 50, 3, 11, 11, N'3b284ec0-57b8-4c3e-9824-3e26b0b17d7a')
SET IDENTITY_INSERT [dbo].[Cars] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name]) VALUES (1, N'VinFast.')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (2, N'Mazda.')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (3, N'Toyota.')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (4, N'Mercedes-benz.')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (5, N' Lexus.')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (6, N' Ford.')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (7, N'Hyundai.')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (8, N'Porsche.')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (9, N'Honda')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Comments] ON 

INSERT [dbo].[Comments] ([Id], [Content], [CommentType], [OwnerId], [CreatedDate], [ParentId], [BlogId]) VALUES (1, N'good', N'cmt', N'b82f38fe-3b44-4d8d-b638-6481ff501c94', CAST(N'2023-08-23T10:29:48.3032439' AS DateTime2), NULL, 6)
INSERT [dbo].[Comments] ([Id], [Content], [CommentType], [OwnerId], [CreatedDate], [ParentId], [BlogId]) VALUES (2, N'haha', N'reply', N'b82f38fe-3b44-4d8d-b638-6481ff501c94', CAST(N'2023-08-23T10:29:59.2672578' AS DateTime2), 1, 6)
SET IDENTITY_INSERT [dbo].[Comments] OFF
GO
SET IDENTITY_INSERT [dbo].[Features] ON 

INSERT [dbo].[Features] ([Id], [IsAirconditions], [IsChildSeat], [IsGPS], [IsLuggage], [IsMusic], [IsSeatBelt], [IsSleepingBed], [IsWater], [IsBluetooth], [IsOnboardComputer], [IsAudioInput], [IsLongTermTrips], [IsCarKit], [IsRemoteCentralLocking], [IsClimateControl]) VALUES (1, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Features] ([Id], [IsAirconditions], [IsChildSeat], [IsGPS], [IsLuggage], [IsMusic], [IsSeatBelt], [IsSleepingBed], [IsWater], [IsBluetooth], [IsOnboardComputer], [IsAudioInput], [IsLongTermTrips], [IsCarKit], [IsRemoteCentralLocking], [IsClimateControl]) VALUES (2, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Features] ([Id], [IsAirconditions], [IsChildSeat], [IsGPS], [IsLuggage], [IsMusic], [IsSeatBelt], [IsSleepingBed], [IsWater], [IsBluetooth], [IsOnboardComputer], [IsAudioInput], [IsLongTermTrips], [IsCarKit], [IsRemoteCentralLocking], [IsClimateControl]) VALUES (3, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Features] ([Id], [IsAirconditions], [IsChildSeat], [IsGPS], [IsLuggage], [IsMusic], [IsSeatBelt], [IsSleepingBed], [IsWater], [IsBluetooth], [IsOnboardComputer], [IsAudioInput], [IsLongTermTrips], [IsCarKit], [IsRemoteCentralLocking], [IsClimateControl]) VALUES (4, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Features] ([Id], [IsAirconditions], [IsChildSeat], [IsGPS], [IsLuggage], [IsMusic], [IsSeatBelt], [IsSleepingBed], [IsWater], [IsBluetooth], [IsOnboardComputer], [IsAudioInput], [IsLongTermTrips], [IsCarKit], [IsRemoteCentralLocking], [IsClimateControl]) VALUES (5, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Features] ([Id], [IsAirconditions], [IsChildSeat], [IsGPS], [IsLuggage], [IsMusic], [IsSeatBelt], [IsSleepingBed], [IsWater], [IsBluetooth], [IsOnboardComputer], [IsAudioInput], [IsLongTermTrips], [IsCarKit], [IsRemoteCentralLocking], [IsClimateControl]) VALUES (6, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Features] ([Id], [IsAirconditions], [IsChildSeat], [IsGPS], [IsLuggage], [IsMusic], [IsSeatBelt], [IsSleepingBed], [IsWater], [IsBluetooth], [IsOnboardComputer], [IsAudioInput], [IsLongTermTrips], [IsCarKit], [IsRemoteCentralLocking], [IsClimateControl]) VALUES (7, 1, 1, 1, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Features] ([Id], [IsAirconditions], [IsChildSeat], [IsGPS], [IsLuggage], [IsMusic], [IsSeatBelt], [IsSleepingBed], [IsWater], [IsBluetooth], [IsOnboardComputer], [IsAudioInput], [IsLongTermTrips], [IsCarKit], [IsRemoteCentralLocking], [IsClimateControl]) VALUES (8, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Features] ([Id], [IsAirconditions], [IsChildSeat], [IsGPS], [IsLuggage], [IsMusic], [IsSeatBelt], [IsSleepingBed], [IsWater], [IsBluetooth], [IsOnboardComputer], [IsAudioInput], [IsLongTermTrips], [IsCarKit], [IsRemoteCentralLocking], [IsClimateControl]) VALUES (9, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Features] ([Id], [IsAirconditions], [IsChildSeat], [IsGPS], [IsLuggage], [IsMusic], [IsSeatBelt], [IsSleepingBed], [IsWater], [IsBluetooth], [IsOnboardComputer], [IsAudioInput], [IsLongTermTrips], [IsCarKit], [IsRemoteCentralLocking], [IsClimateControl]) VALUES (10, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Features] ([Id], [IsAirconditions], [IsChildSeat], [IsGPS], [IsLuggage], [IsMusic], [IsSeatBelt], [IsSleepingBed], [IsWater], [IsBluetooth], [IsOnboardComputer], [IsAudioInput], [IsLongTermTrips], [IsCarKit], [IsRemoteCentralLocking], [IsClimateControl]) VALUES (11, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[Features] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [PickUpLocation], [DropUpLocation], [PickUpDate], [DropUpDate], [Time], [Price], [CarID], [UserId], [Status], [Note]) VALUES (1, N'Ha Noi', N'Ha Noi', CAST(N'2023-08-22T00:00:00.0000000' AS DateTime2), CAST(N'2023-08-25T00:00:00.0000000' AS DateTime2), N'2:00am', 100, 3, N'b82f38fe-3b44-4d8d-b638-6481ff501c94', N'Booking', NULL)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Properties] ON 

INSERT [dbo].[Properties] ([Id], [Milerage], [Transmission], [Seats], [Luggage], [Fuel]) VALUES (1, 1234, N'Manual', 5, 2, N'Petro')
INSERT [dbo].[Properties] ([Id], [Milerage], [Transmission], [Seats], [Luggage], [Fuel]) VALUES (2, 3456, N'Manual', 5, 4, N'Petro')
INSERT [dbo].[Properties] ([Id], [Milerage], [Transmission], [Seats], [Luggage], [Fuel]) VALUES (3, 45678, N'Manual', 5, 4, N'Petro')
INSERT [dbo].[Properties] ([Id], [Milerage], [Transmission], [Seats], [Luggage], [Fuel]) VALUES (4, 789, N'Manual', 5, 4, N'Petro')
INSERT [dbo].[Properties] ([Id], [Milerage], [Transmission], [Seats], [Luggage], [Fuel]) VALUES (5, 3456, N'Manual', 5, 2, N'Electricity')
INSERT [dbo].[Properties] ([Id], [Milerage], [Transmission], [Seats], [Luggage], [Fuel]) VALUES (6, 4567, N'Manual', 5, 2, N'Petro')
INSERT [dbo].[Properties] ([Id], [Milerage], [Transmission], [Seats], [Luggage], [Fuel]) VALUES (7, 1234, N'Manual', 7, 4, N'Electricity')
INSERT [dbo].[Properties] ([Id], [Milerage], [Transmission], [Seats], [Luggage], [Fuel]) VALUES (8, 456, N'Manual', 7, 4, N'Electricity')
INSERT [dbo].[Properties] ([Id], [Milerage], [Transmission], [Seats], [Luggage], [Fuel]) VALUES (9, 6789, N'Manual', 5, 4, N'Petro')
INSERT [dbo].[Properties] ([Id], [Milerage], [Transmission], [Seats], [Luggage], [Fuel]) VALUES (10, 789, N'Manual', 5, 4, N'Petro')
INSERT [dbo].[Properties] ([Id], [Milerage], [Transmission], [Seats], [Luggage], [Fuel]) VALUES (11, 4567, N'Manual', 5, 4, N'Petro')
SET IDENTITY_INSERT [dbo].[Properties] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 24-Aug-23 9:38:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 24-Aug-23 9:38:40 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 24-Aug-23 9:38:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 24-Aug-23 9:38:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 24-Aug-23 9:38:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 24-Aug-23 9:38:40 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 24-Aug-23 9:38:40 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Blogs_AuthorID]    Script Date: 24-Aug-23 9:38:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_Blogs_AuthorID] ON [dbo].[Blogs]
(
	[AuthorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Cars_CategoryID]    Script Date: 24-Aug-23 9:38:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_Cars_CategoryID] ON [dbo].[Cars]
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Cars_FeatureID]    Script Date: 24-Aug-23 9:38:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_Cars_FeatureID] ON [dbo].[Cars]
(
	[FeatureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Cars_OwnerID]    Script Date: 24-Aug-23 9:38:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_Cars_OwnerID] ON [dbo].[Cars]
(
	[OwnerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Cars_PropertyID]    Script Date: 24-Aug-23 9:38:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_Cars_PropertyID] ON [dbo].[Cars]
(
	[PropertyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Comments_BlogId]    Script Date: 24-Aug-23 9:38:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_Comments_BlogId] ON [dbo].[Comments]
(
	[BlogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Comments_OwnerId]    Script Date: 24-Aug-23 9:38:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_Comments_OwnerId] ON [dbo].[Comments]
(
	[OwnerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Comments_ParentId]    Script Date: 24-Aug-23 9:38:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_Comments_ParentId] ON [dbo].[Comments]
(
	[ParentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Orders_CarID]    Script Date: 24-Aug-23 9:38:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_CarID] ON [dbo].[Orders]
(
	[CarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Orders_UserId]    Script Date: 24-Aug-23 9:38:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_UserId] ON [dbo].[Orders]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Blogs]  WITH CHECK ADD  CONSTRAINT [FK_Blogs_AspNetUsers_AuthorID] FOREIGN KEY([AuthorID])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Blogs] CHECK CONSTRAINT [FK_Blogs_AspNetUsers_AuthorID]
GO
ALTER TABLE [dbo].[Cars]  WITH CHECK ADD  CONSTRAINT [FK_Cars_AspNetUsers_OwnerID] FOREIGN KEY([OwnerID])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cars] CHECK CONSTRAINT [FK_Cars_AspNetUsers_OwnerID]
GO
ALTER TABLE [dbo].[Cars]  WITH CHECK ADD  CONSTRAINT [FK_Cars_Categories_CategoryID] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cars] CHECK CONSTRAINT [FK_Cars_Categories_CategoryID]
GO
ALTER TABLE [dbo].[Cars]  WITH CHECK ADD  CONSTRAINT [FK_Cars_Features_FeatureID] FOREIGN KEY([FeatureID])
REFERENCES [dbo].[Features] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cars] CHECK CONSTRAINT [FK_Cars_Features_FeatureID]
GO
ALTER TABLE [dbo].[Cars]  WITH CHECK ADD  CONSTRAINT [FK_Cars_Properties_PropertyID] FOREIGN KEY([PropertyID])
REFERENCES [dbo].[Properties] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cars] CHECK CONSTRAINT [FK_Cars_Properties_PropertyID]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_AspNetUsers_OwnerId] FOREIGN KEY([OwnerId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_AspNetUsers_OwnerId]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Blogs_BlogId] FOREIGN KEY([BlogId])
REFERENCES [dbo].[Blogs] ([Id])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Blogs_BlogId]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Comments_ParentId] FOREIGN KEY([ParentId])
REFERENCES [dbo].[Comments] ([Id])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Comments_ParentId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Cars_CarID] FOREIGN KEY([CarID])
REFERENCES [dbo].[Cars] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Cars_CarID]
GO
USE [master]
GO
ALTER DATABASE [CarBook] SET  READ_WRITE 
GO
