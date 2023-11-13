USE [DBInfiniteFenandezAbrahan]
GO
/****** Object:  Table [dbo].[PRODUCTOS]    Script Date: 6/10/2023 08:03:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCTOS](
	[idProd] [int] IDENTITY(1,1) NOT NULL,
	[codProd] [varchar](50) NULL,
	[nombre] [varchar](50) NULL,
	[descripcion] [varchar](50) NULL,
	[idCateg] [int] NULL,
	[stock] [int] NOT NULL,
	[precioVenta] [decimal](10, 2) NULL,
	[estadoProd] [bit] NULL,
	[fechaCreacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idProd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PRODUCTOS] ADD  DEFAULT ((0)) FOR [stock]
GO
ALTER TABLE [dbo].[PRODUCTOS] ADD  DEFAULT ((0)) FOR [precioVenta]
GO
ALTER TABLE [dbo].[PRODUCTOS] ADD  DEFAULT (getdate()) FOR [fechaCreacion]
GO
ALTER TABLE [dbo].[PRODUCTOS]  WITH CHECK ADD FOREIGN KEY([idCateg])
REFERENCES [dbo].[CATEGORIAS] ([idCateg])
GO
