USE [DBInfiniteFenandezAbrahan]
GO
/****** Object:  StoredProcedure [dbo].[SP_REGISTRARCLIENTE]    Script Date: 6/10/2023 08:03:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_REGISTRARCLIENTE](
@documento varchar(50),
@nombre varchar(50),
@apellido varchar(50),
@correo varchar(150),
@telefono varchar(100),
@estado bit,
@idClienteResultado int output,
@mensaje varchar(500) output
)
as
begin
	set @idClienteResultado = 0
	set @mensaje = ''

	if not exists(select * from CLIENTES where documento = @documento)
	begin
		insert into CLIENTES(documento,nombre,apellido,correo,telefono,estado) values 
		(@documento,@nombre,@apellido,@correo,@telefono,@estado)

		set @idClienteResultado = SCOPE_IDENTITY()

	end
	else
		set @mensaje = 'No se puede repetir el documento para más de un cliente'

end
GO
