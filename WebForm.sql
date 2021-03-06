USE [master]
GO
/****** Object:  Database [WebForm]    Script Date: 15/10/2016 12:57:09 ******/
CREATE DATABASE [WebForm]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WebForm', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WebForm.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WebForm_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WebForm_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WebForm] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WebForm].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WebForm] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WebForm] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WebForm] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WebForm] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WebForm] SET ARITHABORT OFF 
GO
ALTER DATABASE [WebForm] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WebForm] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WebForm] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WebForm] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WebForm] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WebForm] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WebForm] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WebForm] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WebForm] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WebForm] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WebForm] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WebForm] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WebForm] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WebForm] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WebForm] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WebForm] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WebForm] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WebForm] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WebForm] SET  MULTI_USER 
GO
ALTER DATABASE [WebForm] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WebForm] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WebForm] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WebForm] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [WebForm] SET DELAYED_DURABILITY = DISABLED 
GO
USE [WebForm]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 15/10/2016 12:57:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](50) NULL,
	[cpf] [int] NULL,
	[endereco] [varchar](50) NULL,
	[cidade] [varchar](50) NULL,
	[telefone] [int] NULL,
	[sexo] [char](1) NULL,
	[email] [varchar](30) NULL,
	[datanasc] [int] NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Produtos]    Script Date: 15/10/2016 12:57:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Produtos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[categoria] [varchar](20) NULL,
	[modelo] [varchar](20) NULL,
	[marca] [varchar](20) NULL,
	[qtdEstoque] [int] NULL,
	[valor] [float] NULL,
	[descricao] [varchar](50) NULL,
 CONSTRAINT [PK_Produtos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VendaProduto]    Script Date: 15/10/2016 12:57:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VendaProduto](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_venda] [int] NULL,
	[id_produto] [int] NULL,
	[unitario] [float] NULL,
	[qtde] [int] NULL,
 CONSTRAINT [PK_VendaProduto] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Vendas]    Script Date: 15/10/2016 12:57:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendas](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_cliente] [int] NULL,
	[data] [datetime] NULL,
 CONSTRAINT [PK_Vendas] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Cliente] ON 

INSERT [dbo].[Cliente] ([id], [nome], [cpf], [endereco], [cidade], [telefone], [sexo], [email], [datanasc]) VALUES (1, N'Leonardo', 123456789, N'Rua X', N'Assis', 998545456, N'F', N'teste', 24)
INSERT [dbo].[Cliente] ([id], [nome], [cpf], [endereco], [cidade], [telefone], [sexo], [email], [datanasc]) VALUES (2, N'Percy', 987654321, N'Av X', N'Assis', 996523214, N'M', N'derci@gonçalves', 69)
INSERT [dbo].[Cliente] ([id], [nome], [cpf], [endereco], [cidade], [telefone], [sexo], [email], [datanasc]) VALUES (3, N'Jubram', 654123987, N'Rua XY', N'Candido Mota', 998745632, N'F', N'jubrao.teste', 45)
INSERT [dbo].[Cliente] ([id], [nome], [cpf], [endereco], [cidade], [telefone], [sexo], [email], [datanasc]) VALUES (4, N'Tattu', 995432159, N'Rural', NULL, 997854658, N'M', N'tattu_4xan', 25)
SET IDENTITY_INSERT [dbo].[Cliente] OFF
SET IDENTITY_INSERT [dbo].[Produtos] ON 

INSERT [dbo].[Produtos] ([id], [categoria], [modelo], [marca], [qtdEstoque], [valor], [descricao]) VALUES (1, N'Notebook', N'teste', N'Dy', 2, 2000, N'bacana')
INSERT [dbo].[Produtos] ([id], [categoria], [modelo], [marca], [qtdEstoque], [valor], [descricao]) VALUES (2, N'Tablet', N'Galaxy note 7', N'Gnusmas', 1, 3000, N'alahu akbar')
INSERT [dbo].[Produtos] ([id], [categoria], [modelo], [marca], [qtdEstoque], [valor], [descricao]) VALUES (3, N'Celular', N'Pixel', N'Google', 5, 4000, N'supimpa')
SET IDENTITY_INSERT [dbo].[Produtos] OFF
ALTER TABLE [dbo].[VendaProduto]  WITH CHECK ADD  CONSTRAINT [FK_VendaProduto_Produtos] FOREIGN KEY([id_produto])
REFERENCES [dbo].[Produtos] ([id])
GO
ALTER TABLE [dbo].[VendaProduto] CHECK CONSTRAINT [FK_VendaProduto_Produtos]
GO
ALTER TABLE [dbo].[VendaProduto]  WITH CHECK ADD  CONSTRAINT [FK_VendaProduto_Vendas] FOREIGN KEY([id_venda])
REFERENCES [dbo].[Vendas] ([id])
GO
ALTER TABLE [dbo].[VendaProduto] CHECK CONSTRAINT [FK_VendaProduto_Vendas]
GO
ALTER TABLE [dbo].[Vendas]  WITH CHECK ADD  CONSTRAINT [FK_Vendas_Cliente] FOREIGN KEY([id_cliente])
REFERENCES [dbo].[Cliente] ([id])
GO
ALTER TABLE [dbo].[Vendas] CHECK CONSTRAINT [FK_Vendas_Cliente]
GO
USE [master]
GO
ALTER DATABASE [WebForm] SET  READ_WRITE 
GO
