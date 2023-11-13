USE [DBInfiniteFenandezAbrahan]
GO
/****** Object:  Table [dbo].[CLIENTES]    Script Date: 6/10/2023 08:03:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLIENTES](
	[idCliente] [int] IDENTITY(1,1) NOT NULL,
	[documento] [varchar](50) NULL,
	[nombre] [varchar](50) NULL,
	[apellido] [varchar](50) NULL,
	[correo] [varchar](150) NULL,
	[telefono] [varchar](100) NULL,
	[estado] [bit] NULL,
	[fechaCreacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CLIENTES] ON 

INSERT [dbo].[CLIENTES] ([idCliente], [documento], [nombre], [apellido], [correo], [telefono], [estado], [fechaCreacion]) VALUES (1, N'40283878', N'testCliente', N'clienteapeape', N'cliente@gmail.com', N'3794885555', 1, CAST(N'2023-09-29T11:06:25.993' AS DateTime))
SET IDENTITY_INSERT [dbo].[CLIENTES] OFF
GO
ALTER TABLE [dbo].[CLIENTES] ADD  DEFAULT (getdate()) FOR [fechaCreacion]
GO
