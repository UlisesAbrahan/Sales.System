USE [DBInfiniteFenandezAbrahan]
GO
/****** Object:  Table [dbo].[CATEGORIAS]    Script Date: 6/10/2023 08:03:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CATEGORIAS](
	[idCateg] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](100) NULL,
	[estadoCateg] [bit] NULL,
	[fechaCreacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idCateg] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CATEGORIAS] ADD  DEFAULT (getdate()) FOR [fechaCreacion]
GO
