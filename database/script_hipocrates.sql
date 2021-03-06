USE [master]
GO
/****** Object:  Database [DBHIPOCRATES]    Script Date: 08/05/2017 0:53:31 ******/
CREATE DATABASE [DBHIPOCRATES]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBHIPOCRATES', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\DBHIPOCRATES.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DBHIPOCRATES_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\DBHIPOCRATES_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DBHIPOCRATES] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBHIPOCRATES].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBHIPOCRATES] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBHIPOCRATES] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBHIPOCRATES] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBHIPOCRATES] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBHIPOCRATES] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBHIPOCRATES] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DBHIPOCRATES] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [DBHIPOCRATES] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBHIPOCRATES] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBHIPOCRATES] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBHIPOCRATES] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBHIPOCRATES] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBHIPOCRATES] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBHIPOCRATES] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBHIPOCRATES] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBHIPOCRATES] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DBHIPOCRATES] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBHIPOCRATES] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBHIPOCRATES] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBHIPOCRATES] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBHIPOCRATES] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBHIPOCRATES] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBHIPOCRATES] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBHIPOCRATES] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DBHIPOCRATES] SET  MULTI_USER 
GO
ALTER DATABASE [DBHIPOCRATES] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBHIPOCRATES] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBHIPOCRATES] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBHIPOCRATES] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [DBHIPOCRATES]
GO
/****** Object:  StoredProcedure [dbo].[sp_agregar_administrador]    Script Date: 08/05/2017 0:53:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_agregar_administrador] @rut BIGINT, @dv char(1), @usuario varchar(20), @password varchar(50) AS
BEGIN
INSERT INTO tblAdministrador (
    administrador_rut,
    administrador_dv,      
    administrador_usuario,  
    administrador_password 
  )
VALUES
(
@rut, 
@dv, 
@usuario, 
@password 
)

END

GO
/****** Object:  StoredProcedure [dbo].[sp_agregar_usuario]    Script Date: 08/05/2017 0:53:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE PROCEDURE [dbo].[sp_agregar_usuario] 
    @usuario_rut                   BIGINT,
    @usuario_nombre                VARCHAR (100),
    @usuario_apaterno              VARCHAR (100),
    @usuario_amaterno              VARCHAR (100),
    @usuario_num_tel_personal      VARCHAR (13),
    @usuario_num_tel_trabajo       VARCHAR (13),
    @usuario_num_anexo             VARCHAR (5),
    @usuario_email                 VARCHAR (100),
    @usuario_password              VARCHAR (50),
    @tblTipoUsuario_tipousuario_id BIGINT,
    @recepcionista_usuario         VARCHAR (50) 
  AS
BEGIN
INSERT INTO tblUsuario (
    usuario_rut,
    usuario_nombre,
    usuario_apaterno,
    usuario_amaterno,
    usuario_num_tel_personal,
    usuario_num_tel_trabajo,
    usuario_num_anexo,
    usuario_email,
    usuario_password,
    tblTipoUsuario_tipousuario_id,
    recepcionista_usuario
  )
VALUES
(
@usuario_rut,
    @usuario_nombre,
    @usuario_apaterno,
    @usuario_amaterno,
    @usuario_num_tel_personal,
    @usuario_num_tel_trabajo,
    @usuario_num_anexo,
    @usuario_email,
    @usuario_password,
    @tblTipoUsuario_tipousuario_id,
    @recepcionista_usuario
)

END

GO
/****** Object:  Table [dbo].[tblAdministrador]    Script Date: 08/05/2017 0:53:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblAdministrador](
	[administrador_rut] [int] NOT NULL,
	[administrador_dv] [char](1) NOT NULL,
	[administrador_usuario] [varchar](20) NOT NULL,
	[administrador_password] [varchar](50) NOT NULL,
 CONSTRAINT [tblAdministrador_administrador_rut_UN] PRIMARY KEY CLUSTERED 
(
	[administrador_rut] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblBoleta]    Script Date: 08/05/2017 0:53:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblBoleta](
	[boleta_id] [int] NOT NULL,
	[boleta_glosa] [varchar](100) NOT NULL,
	[boleta_pago_total_descuento_pesos] [numeric](7, 0) NOT NULL,
	[boleta_pago_total_pesos] [numeric](7, 0) NOT NULL,
	[tblPago_pago_id] [int] NOT NULL,
 CONSTRAINT [tblBoleta_boleta_id_UN] PRIMARY KEY CLUSTERED 
(
	[boleta_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblBonificacion]    Script Date: 08/05/2017 0:53:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBonificacion](
	[bonificacion_id] [int] NOT NULL,
	[bonificacion_porcentaje] [numeric](3, 2) NOT NULL,
	[bonificacion_tope] [numeric](7, 0) NOT NULL,
	[tblTipoSeguro_tipoSeguro_id] [int] NULL,
 CONSTRAINT [tblBonificacion_bonificacion_id_UN] PRIMARY KEY CLUSTERED 
(
	[bonificacion_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblCaja]    Script Date: 08/05/2017 0:53:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCaja](
	[caja_id] [int] NOT NULL,
	[caja_puesto_trabajo] [varchar](50) NOT NULL,
 CONSTRAINT [tblCaja_caja_id_UN] PRIMARY KEY CLUSTERED 
(
	[caja_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblCentroMedico]    Script Date: 08/05/2017 0:53:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCentroMedico](
	[centromedico_id] [int] NOT NULL,
	[centromedico_direccion] [varchar](100) NOT NULL,
	[tblAdministrador_administrador_rut] [int] NOT NULL,
 CONSTRAINT [tblCentroMedico_centromedico_id_UN] PRIMARY KEY CLUSTERED 
(
	[centromedico_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblComuna]    Script Date: 08/05/2017 0:53:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblComuna](
	[comuna_id] [int] NOT NULL,
	[comuna_descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [tblComuna_comuna_id_UN] PRIMARY KEY CLUSTERED 
(
	[comuna_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblDevolucion]    Script Date: 08/05/2017 0:53:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblDevolucion](
	[devolucion_id] [int] NOT NULL,
	[devolucion_monto] [numeric](7, 0) NOT NULL,
	[devolucion_motivo] [varchar](100) NOT NULL,
	[tblNotaCredito_notacredito_id] [int] NOT NULL,
 CONSTRAINT [tblDevolucion_devolucion_id_UN] PRIMARY KEY CLUSTERED 
(
	[devolucion_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblEspecialidad]    Script Date: 08/05/2017 0:53:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblEspecialidad](
	[especialidad_id] [int] NOT NULL,
	[especialidad_descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [tblEspecialidad_especialidad_id_UN] PRIMARY KEY CLUSTERED 
(
	[especialidad_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblFichaMedica]    Script Date: 08/05/2017 0:53:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblFichaMedica](
	[fichamedica_id] [int] NOT NULL,
	[fichamedica_fecha] [date] NOT NULL,
	[fichamedica_peso] [numeric](4, 2) NOT NULL,
	[fichamedica_estatura] [numeric](4, 2) NOT NULL,
	[fichamedica_diagnostico] [varchar](50) NOT NULL,
	[fichamedica_observaciones] [varchar](1000) NOT NULL,
	[fichamedica_req_tratamiento] [char](1) NOT NULL,
	[tblPaciente_paciente_rut] [int] NULL,
 CONSTRAINT [tblFichaMedica_fichamedica_id_UN] PRIMARY KEY CLUSTERED 
(
	[fichamedica_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblFuncionarioTecnico]    Script Date: 08/05/2017 0:53:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblFuncionarioTecnico](
	[funcionarioTec_rut] [int] NOT NULL,
	[funcionarioTec_dv] [char](1) NOT NULL,
	[funcionarioTec_nombre] [varchar](100) NOT NULL,
	[funcionarioTec_apaterno] [varchar](100) NOT NULL,
	[funcionarioTec_amaterno] [varchar](100) NOT NULL,
	[funcionarioTec_fecha_nac] [date] NOT NULL,
	[funcionarioTec_genero] [char](1) NOT NULL,
	[funcionarioTec_email] [varchar](100) NOT NULL,
	[funcionarioTec_usuario] [varchar](100) NOT NULL,
	[funcionarioTec_password] [varchar](100) NOT NULL,
	[funcionarioTec_num_tel_personal] [varchar](13) NULL,
	[funcionarioTec_num_tel_trabajo] [varchar](13) NOT NULL,
	[funcionarioTec_num_anexo] [varchar](5) NOT NULL,
 CONSTRAINT [tblFuncionarioTecnico_funcionarioTec_rut_UN] PRIMARY KEY CLUSTERED 
(
	[funcionarioTec_rut] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblMedico]    Script Date: 08/05/2017 0:53:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblMedico](
	[medico_rut] [int] NOT NULL,
	[medico_dv] [char](1) NOT NULL,
	[medico_nombre] [varchar](100) NOT NULL,
	[medico_apaterno] [varchar](100) NOT NULL,
	[medico_amaterno] [varchar](100) NOT NULL,
	[medico_fecha_nac] [date] NOT NULL,
	[medico_genero] [char](1) NOT NULL,
	[medico_email] [varchar](100) NOT NULL,
	[medico_usuario] [varchar](50) NOT NULL,
	[medico_password] [varchar](50) NOT NULL,
	[medico_num_tel_personal] [varchar](13) NULL,
	[medico_num_tel_trabajo] [varchar](13) NOT NULL,
	[medico_num_anexo] [varchar](5) NOT NULL,
	[especialidad_id2] [int] NULL,
	[especialidad_id] [int] NOT NULL,
	[tblEspecialidad_especialidad_id] [int] NULL,
 CONSTRAINT [tblMedico_medico_rut_UN] PRIMARY KEY CLUSTERED 
(
	[medico_rut] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblMetodoPago]    Script Date: 08/05/2017 0:53:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblMetodoPago](
	[metodoPago_id] [int] NOT NULL,
	[metodoPago_descripcion] [varchar](50) NOT NULL,
	[tblPago_pago_id] [int] NOT NULL,
 CONSTRAINT [tblMetodoPago_metodoPago_id_UN] PRIMARY KEY CLUSTERED 
(
	[metodoPago_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblMovimientoCaja]    Script Date: 08/05/2017 0:53:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMovimientoCaja](
	[movimientocaja_id] [int] NOT NULL,
	[movimientocaja_fh_apertura] [date] NOT NULL,
	[movimientocaja_fh_cierre] [date] NOT NULL,
	[tblCaja_caja_id] [int] NULL,
	[movimientocaja_recaudacion] [numeric](9, 0) NOT NULL,
	[tblSupervisor_supervisor_rut] [int] NOT NULL,
 CONSTRAINT [tblMovimientoCaja_movimientocaja_id_UN] PRIMARY KEY CLUSTERED 
(
	[movimientocaja_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblNotaCredito]    Script Date: 08/05/2017 0:53:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNotaCredito](
	[notacredito_id] [int] NOT NULL,
	[notacredito_monto] [numeric](7, 0) NOT NULL,
 CONSTRAINT [tblNotaCredito_notacredito_id_UN] PRIMARY KEY CLUSTERED 
(
	[notacredito_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblPaciente]    Script Date: 08/05/2017 0:53:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblPaciente](
	[paciente_rut] [int] NOT NULL,
	[paciente_dv] [char](1) NOT NULL,
	[paciente_nombre] [varchar](100) NOT NULL,
	[paciente_apaterno] [varchar](100) NOT NULL,
	[paciente_amaterno] [varchar](100) NOT NULL,
	[paciente_fecha_nac] [date] NOT NULL,
	[paciente_genero] [char](1) NOT NULL,
	[paciente_email] [varchar](50) NOT NULL,
	[paciente_password] [varchar](100) NOT NULL,
	[paciente_numcel] [varchar](13) NULL,
	[paciente_numfono] [varchar](13) NULL,
	[paciente_direccion] [varchar](500) NOT NULL,
	[paciente_estado_clave] [char](1) NOT NULL,
	[tblComuna_comuna_id] [int] NOT NULL,
 CONSTRAINT [tblPaciente_paciente_rut_UN] PRIMARY KEY CLUSTERED 
(
	[paciente_rut] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblPago]    Script Date: 08/05/2017 0:53:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPago](
	[pago_id] [int] NOT NULL,
	[pago_monto] [numeric](18, 0) NOT NULL,
	[pago_fh_transaccion] [date] NOT NULL,
	[tblDevolucion_devolucion_id] [int] NOT NULL,
	[tblCaja_caja_id] [int] NULL,
	[tblBonificacion_bonificacion_id] [int] NOT NULL,
 CONSTRAINT [tblPago_pago_id_UN] PRIMARY KEY CLUSTERED 
(
	[pago_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblPrestacion]    Script Date: 08/05/2017 0:53:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPrestacion](
	[prestacion_id] [int] NOT NULL,
	[prestacion_fecha] [date] NOT NULL,
	[tblTipoPrestacion_tipoprestacion_id] [int] NOT NULL,
	[prestacion_valor] [numeric](7, 0) NOT NULL,
	[tblMedico_medico_rut] [int] NULL,
	[tblCentroMedico_centromedico_id] [int] NULL,
	[tblReserva_reserva_id] [int] NULL,
	[tblFuncionarioTecnico_funcionarioTec_rut] [int] NOT NULL,
	[especialidad_id2] [int] NOT NULL,
	[tblPaciente_paciente_rut] [int] NULL,
	[especialidad_id] [int] NULL,
	[tblEspecialidad_especialidad_id] [int] NOT NULL,
 CONSTRAINT [tblPrestacion_prestacion_id_UN] PRIMARY KEY CLUSTERED 
(
	[prestacion_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblReserva]    Script Date: 08/05/2017 0:53:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblReserva](
	[reserva_id] [int] NOT NULL,
	[reserva_fh_ingreso] [date] NOT NULL,
	[reserva_fecha] [date] NOT NULL,
	[reserva_hora] [date] NOT NULL,
	[reserva_estado] [char](1) NOT NULL,
	[reserva_fh_ultimo_estado] [date] NOT NULL,
	[reserva_tipo_canal] [char](1) NOT NULL,
	[tblUsuario_usuario_rut] [int] NULL,
	[paciente_rut] [int] NULL,
	[tblPaciente_paciente_rut] [int] NULL,
 CONSTRAINT [tblReserva_reserva_id_UN] PRIMARY KEY CLUSTERED 
(
	[reserva_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblSupervisor]    Script Date: 08/05/2017 0:53:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSupervisor](
	[supervisor_rut] [int] NOT NULL,
	[supervisor_dv] [char](1) NOT NULL,
	[supervisor_usuario] [varchar](20) NOT NULL,
	[supervisor_password] [varchar](50) NOT NULL,
 CONSTRAINT [tblSupervisor_supervisor_rut_UN] PRIMARY KEY CLUSTERED 
(
	[supervisor_rut] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblTipoPrestacion]    Script Date: 08/05/2017 0:53:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblTipoPrestacion](
	[tipoprestacion_id] [int] NOT NULL,
	[tipoprestacion_descripcion] [varchar](50) NOT NULL,
	[tipoprestacion_subdescripcion] [varchar](50) NOT NULL,
 CONSTRAINT [tblTipoPrestacion_tipoprestacion_id_UN] PRIMARY KEY CLUSTERED 
(
	[tipoprestacion_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblTipoSeguro]    Script Date: 08/05/2017 0:53:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblTipoSeguro](
	[tipoSeguro_id] [int] NOT NULL,
	[tipoSeguro_descripcion] [varchar](50) NOT NULL,
	[tipoSeguro_publico] [char](1) NOT NULL,
 CONSTRAINT [tblTipoSeguro_tipoSeguro_id_UN] PRIMARY KEY CLUSTERED 
(
	[tipoSeguro_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblTipoUsuario]    Script Date: 08/05/2017 0:53:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblTipoUsuario](
	[tipousuario_id] [int] NOT NULL,
	[tipousuario_descripcion] [varchar](150) NOT NULL,
 CONSTRAINT [tblTipoUsuario_PK] PRIMARY KEY CLUSTERED 
(
	[tipousuario_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblUsuario]    Script Date: 08/05/2017 0:53:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblUsuario](
	[usuario_rut] [int] NOT NULL,
	[usuario_nombre] [varchar](100) NOT NULL,
	[usuario_apaterno] [varchar](100) NOT NULL,
	[usuario_amaterno] [varchar](100) NOT NULL,
	[usuario_num_tel_personal] [varchar](13) NULL,
	[usuario_num_tel_trabajo] [varchar](13) NOT NULL,
	[usuario_num_anexo] [varchar](5) NOT NULL,
	[usuario_email] [varchar](100) NOT NULL,
	[usuario_password] [varchar](50) NOT NULL,
	[tblTipoUsuario_tipousuario_id] [int] NOT NULL,
	[recepcionista_usuario] [varchar](50) NOT NULL,
 CONSTRAINT [tblUsuario_usuario_rut_UN] PRIMARY KEY CLUSTERED 
(
	[usuario_rut] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Index [tblCentroMedico__IDX]    Script Date: 08/05/2017 0:53:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [tblCentroMedico__IDX] ON [dbo].[tblCentroMedico]
(
	[tblAdministrador_administrador_rut] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [tblDevolucion__IDX]    Script Date: 08/05/2017 0:53:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [tblDevolucion__IDX] ON [dbo].[tblDevolucion]
(
	[tblNotaCredito_notacredito_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [tblMedico__IDX]    Script Date: 08/05/2017 0:53:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [tblMedico__IDX] ON [dbo].[tblMedico]
(
	[tblEspecialidad_especialidad_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [tblPago__IDX]    Script Date: 08/05/2017 0:53:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [tblPago__IDX] ON [dbo].[tblPago]
(
	[tblDevolucion_devolucion_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [tblPago__IDXv1]    Script Date: 08/05/2017 0:53:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [tblPago__IDXv1] ON [dbo].[tblPago]
(
	[tblBonificacion_bonificacion_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [tblPrestacion__IDX]    Script Date: 08/05/2017 0:53:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [tblPrestacion__IDX] ON [dbo].[tblPrestacion]
(
	[tblTipoPrestacion_tipoprestacion_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [tblPrestacion__IDXv1]    Script Date: 08/05/2017 0:53:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [tblPrestacion__IDXv1] ON [dbo].[tblPrestacion]
(
	[tblReserva_reserva_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [tblPrestacion__IDXv2]    Script Date: 08/05/2017 0:53:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [tblPrestacion__IDXv2] ON [dbo].[tblPrestacion]
(
	[tblMedico_medico_rut] ASC,
	[especialidad_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [tblPrestacion__IDXv3]    Script Date: 08/05/2017 0:53:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [tblPrestacion__IDXv3] ON [dbo].[tblPrestacion]
(
	[tblPaciente_paciente_rut] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [tblPrestacion__IDXX]    Script Date: 08/05/2017 0:53:31 ******/
CREATE UNIQUE NONCLUSTERED INDEX [tblPrestacion__IDXX] ON [dbo].[tblPrestacion]
(
	[tblMedico_medico_rut] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblBoleta]  WITH CHECK ADD  CONSTRAINT [tblBoleta_tblPago_FK] FOREIGN KEY([tblPago_pago_id])
REFERENCES [dbo].[tblPago] ([pago_id])
GO
ALTER TABLE [dbo].[tblBoleta] CHECK CONSTRAINT [tblBoleta_tblPago_FK]
GO
ALTER TABLE [dbo].[tblBonificacion]  WITH CHECK ADD  CONSTRAINT [tblBonificacion_tblTipoSeguro_FK] FOREIGN KEY([tblTipoSeguro_tipoSeguro_id])
REFERENCES [dbo].[tblTipoSeguro] ([tipoSeguro_id])
GO
ALTER TABLE [dbo].[tblBonificacion] CHECK CONSTRAINT [tblBonificacion_tblTipoSeguro_FK]
GO
ALTER TABLE [dbo].[tblCentroMedico]  WITH CHECK ADD  CONSTRAINT [tblCentroMedico_tblAdministrador_FK] FOREIGN KEY([tblAdministrador_administrador_rut])
REFERENCES [dbo].[tblAdministrador] ([administrador_rut])
GO
ALTER TABLE [dbo].[tblCentroMedico] CHECK CONSTRAINT [tblCentroMedico_tblAdministrador_FK]
GO
ALTER TABLE [dbo].[tblDevolucion]  WITH CHECK ADD  CONSTRAINT [tblDevolucion_tblNotaCredito_FK] FOREIGN KEY([tblNotaCredito_notacredito_id])
REFERENCES [dbo].[tblNotaCredito] ([notacredito_id])
GO
ALTER TABLE [dbo].[tblDevolucion] CHECK CONSTRAINT [tblDevolucion_tblNotaCredito_FK]
GO
ALTER TABLE [dbo].[tblFichaMedica]  WITH CHECK ADD  CONSTRAINT [tblFichaMedica_tblPaciente_FK] FOREIGN KEY([tblPaciente_paciente_rut])
REFERENCES [dbo].[tblPaciente] ([paciente_rut])
GO
ALTER TABLE [dbo].[tblFichaMedica] CHECK CONSTRAINT [tblFichaMedica_tblPaciente_FK]
GO
ALTER TABLE [dbo].[tblMedico]  WITH CHECK ADD  CONSTRAINT [es_poseida] FOREIGN KEY([especialidad_id])
REFERENCES [dbo].[tblEspecialidad] ([especialidad_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblMedico] CHECK CONSTRAINT [es_poseida]
GO
ALTER TABLE [dbo].[tblMedico]  WITH CHECK ADD  CONSTRAINT [tblMedico_tblEspecialidad_FK] FOREIGN KEY([tblEspecialidad_especialidad_id])
REFERENCES [dbo].[tblEspecialidad] ([especialidad_id])
GO
ALTER TABLE [dbo].[tblMedico] CHECK CONSTRAINT [tblMedico_tblEspecialidad_FK]
GO
ALTER TABLE [dbo].[tblMetodoPago]  WITH CHECK ADD  CONSTRAINT [tblMetodoPago_tblPago_FK] FOREIGN KEY([tblPago_pago_id])
REFERENCES [dbo].[tblPago] ([pago_id])
GO
ALTER TABLE [dbo].[tblMetodoPago] CHECK CONSTRAINT [tblMetodoPago_tblPago_FK]
GO
ALTER TABLE [dbo].[tblMovimientoCaja]  WITH CHECK ADD  CONSTRAINT [tblMovimientoCaja_tblCaja_FK] FOREIGN KEY([tblCaja_caja_id])
REFERENCES [dbo].[tblCaja] ([caja_id])
GO
ALTER TABLE [dbo].[tblMovimientoCaja] CHECK CONSTRAINT [tblMovimientoCaja_tblCaja_FK]
GO
ALTER TABLE [dbo].[tblMovimientoCaja]  WITH CHECK ADD  CONSTRAINT [tblMovimientoCaja_tblSupervisor_FK] FOREIGN KEY([tblSupervisor_supervisor_rut])
REFERENCES [dbo].[tblSupervisor] ([supervisor_rut])
GO
ALTER TABLE [dbo].[tblMovimientoCaja] CHECK CONSTRAINT [tblMovimientoCaja_tblSupervisor_FK]
GO
ALTER TABLE [dbo].[tblPaciente]  WITH CHECK ADD  CONSTRAINT [tblPaciente_tblComuna_FK] FOREIGN KEY([tblComuna_comuna_id])
REFERENCES [dbo].[tblComuna] ([comuna_id])
GO
ALTER TABLE [dbo].[tblPaciente] CHECK CONSTRAINT [tblPaciente_tblComuna_FK]
GO
ALTER TABLE [dbo].[tblPago]  WITH CHECK ADD  CONSTRAINT [tblPago_tblBonificacion_FK] FOREIGN KEY([tblBonificacion_bonificacion_id])
REFERENCES [dbo].[tblBonificacion] ([bonificacion_id])
GO
ALTER TABLE [dbo].[tblPago] CHECK CONSTRAINT [tblPago_tblBonificacion_FK]
GO
ALTER TABLE [dbo].[tblPago]  WITH CHECK ADD  CONSTRAINT [tblPago_tblCaja_FK] FOREIGN KEY([tblCaja_caja_id])
REFERENCES [dbo].[tblCaja] ([caja_id])
GO
ALTER TABLE [dbo].[tblPago] CHECK CONSTRAINT [tblPago_tblCaja_FK]
GO
ALTER TABLE [dbo].[tblPago]  WITH CHECK ADD  CONSTRAINT [tblPago_tblDevolucion_FK] FOREIGN KEY([tblDevolucion_devolucion_id])
REFERENCES [dbo].[tblDevolucion] ([devolucion_id])
GO
ALTER TABLE [dbo].[tblPago] CHECK CONSTRAINT [tblPago_tblDevolucion_FK]
GO
ALTER TABLE [dbo].[tblPrestacion]  WITH CHECK ADD  CONSTRAINT [tblPrestacion_tblCentroMedico_FK] FOREIGN KEY([tblCentroMedico_centromedico_id])
REFERENCES [dbo].[tblCentroMedico] ([centromedico_id])
GO
ALTER TABLE [dbo].[tblPrestacion] CHECK CONSTRAINT [tblPrestacion_tblCentroMedico_FK]
GO
ALTER TABLE [dbo].[tblPrestacion]  WITH CHECK ADD  CONSTRAINT [tblPrestacion_tblEspecialidad_FK] FOREIGN KEY([tblEspecialidad_especialidad_id])
REFERENCES [dbo].[tblEspecialidad] ([especialidad_id])
GO
ALTER TABLE [dbo].[tblPrestacion] CHECK CONSTRAINT [tblPrestacion_tblEspecialidad_FK]
GO
ALTER TABLE [dbo].[tblPrestacion]  WITH CHECK ADD  CONSTRAINT [tblPrestacion_tblFuncionarioTecnico_FK] FOREIGN KEY([tblFuncionarioTecnico_funcionarioTec_rut])
REFERENCES [dbo].[tblFuncionarioTecnico] ([funcionarioTec_rut])
GO
ALTER TABLE [dbo].[tblPrestacion] CHECK CONSTRAINT [tblPrestacion_tblFuncionarioTecnico_FK]
GO
ALTER TABLE [dbo].[tblPrestacion]  WITH CHECK ADD  CONSTRAINT [tblPrestacion_tblMedico_FK] FOREIGN KEY([tblMedico_medico_rut])
REFERENCES [dbo].[tblMedico] ([medico_rut])
GO
ALTER TABLE [dbo].[tblPrestacion] CHECK CONSTRAINT [tblPrestacion_tblMedico_FK]
GO
ALTER TABLE [dbo].[tblPrestacion]  WITH CHECK ADD  CONSTRAINT [tblPrestacion_tblPaciente_FK] FOREIGN KEY([tblPaciente_paciente_rut])
REFERENCES [dbo].[tblPaciente] ([paciente_rut])
GO
ALTER TABLE [dbo].[tblPrestacion] CHECK CONSTRAINT [tblPrestacion_tblPaciente_FK]
GO
ALTER TABLE [dbo].[tblPrestacion]  WITH CHECK ADD  CONSTRAINT [tblPrestacion_tblReserva_FK] FOREIGN KEY([tblReserva_reserva_id])
REFERENCES [dbo].[tblReserva] ([reserva_id])
GO
ALTER TABLE [dbo].[tblPrestacion] CHECK CONSTRAINT [tblPrestacion_tblReserva_FK]
GO
ALTER TABLE [dbo].[tblPrestacion]  WITH CHECK ADD  CONSTRAINT [tblPrestacion_tblTipoPrestacion_FK] FOREIGN KEY([tblTipoPrestacion_tipoprestacion_id])
REFERENCES [dbo].[tblTipoPrestacion] ([tipoprestacion_id])
GO
ALTER TABLE [dbo].[tblPrestacion] CHECK CONSTRAINT [tblPrestacion_tblTipoPrestacion_FK]
GO
ALTER TABLE [dbo].[tblReserva]  WITH CHECK ADD  CONSTRAINT [tblReserva_tblPaciente_FK] FOREIGN KEY([tblPaciente_paciente_rut])
REFERENCES [dbo].[tblPaciente] ([paciente_rut])
GO
ALTER TABLE [dbo].[tblReserva] CHECK CONSTRAINT [tblReserva_tblPaciente_FK]
GO
ALTER TABLE [dbo].[tblReserva]  WITH CHECK ADD  CONSTRAINT [tblReserva_tblUsuario_FK] FOREIGN KEY([tblUsuario_usuario_rut])
REFERENCES [dbo].[tblUsuario] ([usuario_rut])
GO
ALTER TABLE [dbo].[tblReserva] CHECK CONSTRAINT [tblReserva_tblUsuario_FK]
GO
ALTER TABLE [dbo].[tblUsuario]  WITH CHECK ADD  CONSTRAINT [tblUsuario_tblTipoUsuario_FK] FOREIGN KEY([tblTipoUsuario_tipousuario_id])
REFERENCES [dbo].[tblTipoUsuario] ([tipousuario_id])
GO
ALTER TABLE [dbo].[tblUsuario] CHECK CONSTRAINT [tblUsuario_tblTipoUsuario_FK]
GO
USE [master]
GO
ALTER DATABASE [DBHIPOCRATES] SET  READ_WRITE 
GO
