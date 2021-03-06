USE [Falabella]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 4/05/2019 11:19:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[Cliente_id] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Apellido] [varchar](50) NULL,
	[Dirección] [varchar](30) NULL,
	[Telefono] [int] NULL,
	[Correoelectronico] [varchar](50) NULL,
	[Ciudad] [varchar](50) NULL,
	[Producto_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Cliente_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClienteProducto]    Script Date: 4/05/2019 11:19:43 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClienteProducto](
	[Cliente_id] [int] NOT NULL,
	[Producto_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Cliente_id] ASC,
	[Producto_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompaniaAseguradora]    Script Date: 4/05/2019 11:19:43 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompaniaAseguradora](
	[Compania_id] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[NIT] [varchar](50) NULL,
	[Telefono] [int] NULL,
	[Ciudad] [varchar](50) NULL,
	[Correoelectronico] [varchar](50) NULL,
	[Dirección] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Compania_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 4/05/2019 11:19:43 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[Producto_Id] [int] NOT NULL,
	[Prima] [varchar](50) NOT NULL,
	[Cobertura] [varchar](50) NOT NULL,
	[Asistencia] [varchar](50) NOT NULL,
	[Compania_Id] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[Producto_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_CompaniaAseguradora] FOREIGN KEY([Compania_Id])
REFERENCES [dbo].[CompaniaAseguradora] ([Compania_id])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_CompaniaAseguradora]
GO
