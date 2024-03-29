USE [Bibliotechs]
GO
/****** Object:  Table [dbo].[Pacote]    Script Date: 04/29/2014 18:53:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Pacote]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Pacote](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tipo] [varchar](11) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Pacote] ON
INSERT [dbo].[Pacote] ([id], [tipo]) VALUES (1, N'padrão')
INSERT [dbo].[Pacote] ([id], [tipo]) VALUES (2, N'Customizado')
INSERT [dbo].[Pacote] ([id], [tipo]) VALUES (3, N'padrão')
INSERT [dbo].[Pacote] ([id], [tipo]) VALUES (4, N'Customizado')
INSERT [dbo].[Pacote] ([id], [tipo]) VALUES (5, N'Customizado')
INSERT [dbo].[Pacote] ([id], [tipo]) VALUES (6, N'Customizado')
INSERT [dbo].[Pacote] ([id], [tipo]) VALUES (7, N'padrão')
INSERT [dbo].[Pacote] ([id], [tipo]) VALUES (8, N'padrão')
INSERT [dbo].[Pacote] ([id], [tipo]) VALUES (9, N'padrão')
INSERT [dbo].[Pacote] ([id], [tipo]) VALUES (10, N'padrão')
INSERT [dbo].[Pacote] ([id], [tipo]) VALUES (11, N'padrão')
INSERT [dbo].[Pacote] ([id], [tipo]) VALUES (12, N'Customizado')
INSERT [dbo].[Pacote] ([id], [tipo]) VALUES (13, N'Customizado')
INSERT [dbo].[Pacote] ([id], [tipo]) VALUES (14, N'padrão')
INSERT [dbo].[Pacote] ([id], [tipo]) VALUES (15, N'padrão')
SET IDENTITY_INSERT [dbo].[Pacote] OFF
/****** Object:  Table [dbo].[Autor]    Script Date: 04/29/2014 18:53:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Autor]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Autor](
	[id] [smallint] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](50) NOT NULL,
	[data_nascimento] [date] NULL,
	[cidade] [varchar](30) NULL,
	[pais] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Autor] ON
INSERT [dbo].[Autor] ([id], [nome], [data_nascimento], [cidade], [pais]) VALUES (1, N'Carlos', CAST(0x2EDD0A00 AS Date), N'São Paulo', N'Brasil')
INSERT [dbo].[Autor] ([id], [nome], [data_nascimento], [cidade], [pais]) VALUES (2, N'Judas', CAST(0x31DD0A00 AS Date), N'Itajubá', N'Brasil')
INSERT [dbo].[Autor] ([id], [nome], [data_nascimento], [cidade], [pais]) VALUES (3, N'João', CAST(0xCBE90A00 AS Date), N'Rio de Janeiro', N'Brasil')
INSERT [dbo].[Autor] ([id], [nome], [data_nascimento], [cidade], [pais]) VALUES (4, N'José', CAST(0x0FCC0A00 AS Date), N'São Paulo', N'Brasil')
INSERT [dbo].[Autor] ([id], [nome], [data_nascimento], [cidade], [pais]) VALUES (5, N'Drumond', CAST(0x97BF0A00 AS Date), N'São Paulo', N'Brasil')
INSERT [dbo].[Autor] ([id], [nome], [data_nascimento], [cidade], [pais]) VALUES (6, N'Valeska P.', CAST(0x0C130B00 AS Date), N'Rio de Janeiro', N'Brasil')
INSERT [dbo].[Autor] ([id], [nome], [data_nascimento], [cidade], [pais]) VALUES (7, N'Paulo', CAST(0xB3070B00 AS Date), N'Belo Horizonte', N'Brasil')
INSERT [dbo].[Autor] ([id], [nome], [data_nascimento], [cidade], [pais]) VALUES (8, N'Carmem', CAST(0x98E80A00 AS Date), N'Rio de Janeiro', N'Brasil')
INSERT [dbo].[Autor] ([id], [nome], [data_nascimento], [cidade], [pais]) VALUES (9, N'Carla', CAST(0x2EDD0A00 AS Date), N'Salvador', N'Brasil')
INSERT [dbo].[Autor] ([id], [nome], [data_nascimento], [cidade], [pais]) VALUES (10, N'Marcos', CAST(0x7D000B00 AS Date), N'Florianópolis', N'Brasil')
INSERT [dbo].[Autor] ([id], [nome], [data_nascimento], [cidade], [pais]) VALUES (11, N'Matheus', CAST(0x30040B00 AS Date), N'Varginha', N'Brasil')
INSERT [dbo].[Autor] ([id], [nome], [data_nascimento], [cidade], [pais]) VALUES (12, N'Vanessa', CAST(0x90150B00 AS Date), N'Belo Horizonte', N'Brasil')
INSERT [dbo].[Autor] ([id], [nome], [data_nascimento], [cidade], [pais]) VALUES (13, N'Claudio', CAST(0x94FA0A00 AS Date), N'Itajubá', N'Brasil')
INSERT [dbo].[Autor] ([id], [nome], [data_nascimento], [cidade], [pais]) VALUES (14, N'Sérgio', CAST(0x44DD0A00 AS Date), N'Salvador', N'Brasil')
INSERT [dbo].[Autor] ([id], [nome], [data_nascimento], [cidade], [pais]) VALUES (15, N'Gioconda', CAST(0xEEEB0A00 AS Date), N'São Paulo', N'Brasil')
SET IDENTITY_INSERT [dbo].[Autor] OFF
/****** Object:  Table [dbo].[Editora]    Script Date: 04/29/2014 18:53:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Editora]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Editora](
	[id] [smallint] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](50) NOT NULL,
	[cnpj] [varchar](18) NOT NULL,
	[logradouro] [varchar](50) NOT NULL,
	[numero] [smallint] NOT NULL,
	[bairro] [varchar](25) NOT NULL,
	[cidade] [varchar](30) NOT NULL,
	[estado] [varchar](2) NOT NULL,
	[pais] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[cnpj] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Editora] ON
INSERT [dbo].[Editora] ([id], [nome], [cnpj], [logradouro], [numero], [bairro], [cidade], [estado], [pais]) VALUES (1, N'Saraiva', N'783271881/000-5', N'wherhsdjfsdf', 23, N'hdajshd', N'São Paulo', N'SP', N'Brasil')
INSERT [dbo].[Editora] ([id], [nome], [cnpj], [logradouro], [numero], [bairro], [cidade], [estado], [pais]) VALUES (6, N'Abril', N'783471881/000-5', N'wherhsdjfsdf', 23, N'hdajshd', N'Rio de Janeiro', N'RJ', N'Brasil')
INSERT [dbo].[Editora] ([id], [nome], [cnpj], [logradouro], [numero], [bairro], [cidade], [estado], [pais]) VALUES (7, N'Pearson', N'783271881\000-6', N'wherhsdjfsdf', 23, N'hdajshd', N'São Paulo', N'SP', N'Brasil')
INSERT [dbo].[Editora] ([id], [nome], [cnpj], [logradouro], [numero], [bairro], [cidade], [estado], [pais]) VALUES (9, N'Atica', N'783271881/000-3', N'wherhsdjfsdf', 23, N'hdajshd', N'Belo Horizonte', N'MG', N'Brasil')
INSERT [dbo].[Editora] ([id], [nome], [cnpj], [logradouro], [numero], [bairro], [cidade], [estado], [pais]) VALUES (10, N'Ética', N'723271881/000-5', N'wherhsdjfsdf', 23, N'hdajshd', N'Rio de Janeiro', N'RJ', N'Brasil')
INSERT [dbo].[Editora] ([id], [nome], [cnpj], [logradouro], [numero], [bairro], [cidade], [estado], [pais]) VALUES (11, N'Rocco', N'783271871/000-5', N'wherhsdjfsdf', 23, N'hdajshd', N'Belo Horizonte', N'MG', N'Brasil')
INSERT [dbo].[Editora] ([id], [nome], [cnpj], [logradouro], [numero], [bairro], [cidade], [estado], [pais]) VALUES (12, N'Nobel', N'783273881/000-5', N'wherhsdjfsdf', 23, N'hdajshd', N'Rio de Janeiro', N'RJ', N'Brasil')
INSERT [dbo].[Editora] ([id], [nome], [cnpj], [logradouro], [numero], [bairro], [cidade], [estado], [pais]) VALUES (13, N'Sextante', N'783271881/000-0', N'wherhsdjfsdf', 23, N'hdajshd', N'São Paulo', N'SP', N'Brasil')
INSERT [dbo].[Editora] ([id], [nome], [cnpj], [logradouro], [numero], [bairro], [cidade], [estado], [pais]) VALUES (14, N'Intrinseca', N'784271881/000-5', N'wherhsdjfsdf', 23, N'hdajshd', N'Rio de Janeiro', N'RJ', N'Brasil')
INSERT [dbo].[Editora] ([id], [nome], [cnpj], [logradouro], [numero], [bairro], [cidade], [estado], [pais]) VALUES (15, N'Record', N'713271881/000-5', N'wherhsdjfsdf', 23, N'hdajshd', N'São Paulo', N'SP', N'Brasil')
INSERT [dbo].[Editora] ([id], [nome], [cnpj], [logradouro], [numero], [bairro], [cidade], [estado], [pais]) VALUES (16, N'Planeta', N'783271881/000-1', N'wherhsdjfsdf', 23, N'hdajshd', N'Rio de Janeiro', N'RJ', N'Brasil')
INSERT [dbo].[Editora] ([id], [nome], [cnpj], [logradouro], [numero], [bairro], [cidade], [estado], [pais]) VALUES (17, N'Leva', N'783271891/000-5', N'wherhsdjfsdf', 23, N'hdajshd', N'Belo Horizonte', N'MG', N'Brasil')
INSERT [dbo].[Editora] ([id], [nome], [cnpj], [logradouro], [numero], [bairro], [cidade], [estado], [pais]) VALUES (18, N'Cia das Letras', N'783274381/000-5', N'wherhsdjfsdf', 23, N'hdajshd', N'Rio de Janeiro', N'RJ', N'Brasil')
INSERT [dbo].[Editora] ([id], [nome], [cnpj], [logradouro], [numero], [bairro], [cidade], [estado], [pais]) VALUES (19, N'Digitak EB', N'783771881/000-5', N'wherhsdjfsdf', 23, N'hdajshd', N'Belo Horizonte', N'MG', N'Brasil')
INSERT [dbo].[Editora] ([id], [nome], [cnpj], [logradouro], [numero], [bairro], [cidade], [estado], [pais]) VALUES (20, N'Ediouro', N'093271881/000-5', N'wherhsdjfsdf', 23, N'hdajshd', N'Salvador', N'BA', N'Brasil')
SET IDENTITY_INSERT [dbo].[Editora] OFF
/****** Object:  Table [dbo].[Usuario]    Script Date: 04/29/2014 18:53:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Usuario]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Usuario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](50) NULL,
	[cpf] [varchar](14) NULL,
	[sexo] [varchar](1) NULL,
	[data_nascimento] [date] NULL,
	[logradouro] [varchar](50) NOT NULL,
	[numero] [smallint] NOT NULL,
	[bairro] [varchar](25) NOT NULL,
	[cidade] [varchar](30) NOT NULL,
	[estado] [varchar](2) NOT NULL,
	[pais] [varchar](30) NOT NULL,
	[foto] [varchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON
INSERT [dbo].[Usuario] ([id], [nome], [cpf], [sexo], [data_nascimento], [logradouro], [numero], [bairro], [cidade], [estado], [pais], [foto]) VALUES (1, N'Jonathan', NULL, N'M', CAST(0xFA1B0B00 AS Date), N'hauehuahe', 19, N'aehuahjj', N'Pouso Alegre', N'MG', N'Brasil', NULL)
INSERT [dbo].[Usuario] ([id], [nome], [cpf], [sexo], [data_nascimento], [logradouro], [numero], [bairro], [cidade], [estado], [pais], [foto]) VALUES (2, N'Murillo', NULL, N'M', CAST(0x40180B00 AS Date), N'hheehe', 21, N'kkkkk', N'itajubá', N'MG', N'Brasil', NULL)
INSERT [dbo].[Usuario] ([id], [nome], [cpf], [sexo], [data_nascimento], [logradouro], [numero], [bairro], [cidade], [estado], [pais], [foto]) VALUES (3, N'Paulo', NULL, N'M', CAST(0x8A190B00 AS Date), N'aiuhehe', 32, N'oaaoaoa', N'Guara', N'SP', N'Brasil', NULL)
INSERT [dbo].[Usuario] ([id], [nome], [cpf], [sexo], [data_nascimento], [logradouro], [numero], [bairro], [cidade], [estado], [pais], [foto]) VALUES (4, N'Rafael', NULL, N'M', CAST(0x17150B00 AS Date), N'hehehe', 32, N'dssdf', N'Florianópolis', N'SC', N'Brasil', NULL)
INSERT [dbo].[Usuario] ([id], [nome], [cpf], [sexo], [data_nascimento], [logradouro], [numero], [bairro], [cidade], [estado], [pais], [foto]) VALUES (5, N'Silas', NULL, N'M', CAST(0x341C0B00 AS Date), N'isudidnuiv', 78, N'jasjsdjej', N'Salvador', N'BA', N'Brasil', NULL)
INSERT [dbo].[Usuario] ([id], [nome], [cpf], [sexo], [data_nascimento], [logradouro], [numero], [bairro], [cidade], [estado], [pais], [foto]) VALUES (6, N'Paula', NULL, N'F', CAST(0x671D0B00 AS Date), N'neunausn', 90, N'aehuah', N'Pouso Alegre', N'MG', N'Brasil', NULL)
INSERT [dbo].[Usuario] ([id], [nome], [cpf], [sexo], [data_nascimento], [logradouro], [numero], [bairro], [cidade], [estado], [pais], [foto]) VALUES (7, N'Joana', NULL, N'F', CAST(0x22190B00 AS Date), N'efeefddfgf', 222, N'sdssd', N'São Paulo', N'SP', N'Brasil', NULL)
INSERT [dbo].[Usuario] ([id], [nome], [cpf], [sexo], [data_nascimento], [logradouro], [numero], [bairro], [cidade], [estado], [pais], [foto]) VALUES (8, N'Rafaela', NULL, N'F', CAST(0x2F130B00 AS Date), N'hahaha', 121, N'assdfdfdf', N'Goiânia', N'GO', N'Brasil', NULL)
INSERT [dbo].[Usuario] ([id], [nome], [cpf], [sexo], [data_nascimento], [logradouro], [numero], [bairro], [cidade], [estado], [pais], [foto]) VALUES (9, N'Melise', NULL, N'F', CAST(0x791E0B00 AS Date), N'kekalek', 213, N'hehiha', N'Itajubá', N'MG', N'Brasil', NULL)
INSERT [dbo].[Usuario] ([id], [nome], [cpf], [sexo], [data_nascimento], [logradouro], [numero], [bairro], [cidade], [estado], [pais], [foto]) VALUES (10, N'Thiago', NULL, N'M', CAST(0x6A180B00 AS Date), N'hauehuahe', 122, N'ssfer', N'Pouso Alegre', N'MG', N'Brasil', NULL)
INSERT [dbo].[Usuario] ([id], [nome], [cpf], [sexo], [data_nascimento], [logradouro], [numero], [bairro], [cidade], [estado], [pais], [foto]) VALUES (11, N'Miguel', NULL, N'M', CAST(0x3F180B00 AS Date), N'yaiahe', 90, N'nenejsa', N'Santa Rita', N'MG', N'Brasil', NULL)
INSERT [dbo].[Usuario] ([id], [nome], [cpf], [sexo], [data_nascimento], [logradouro], [numero], [bairro], [cidade], [estado], [pais], [foto]) VALUES (12, N'Isabela', NULL, N'F', CAST(0x841A0B00 AS Date), N'hauehuahe', 43, N'hehehehe', N'Rio de Janeiro', N'RJ', N'Brasil', NULL)
INSERT [dbo].[Usuario] ([id], [nome], [cpf], [sexo], [data_nascimento], [logradouro], [numero], [bairro], [cidade], [estado], [pais], [foto]) VALUES (13, N'Daniele', NULL, N'F', CAST(0x561C0B00 AS Date), N'hahaha', 24, N'aehuah', N'Guara', N'SP', N'Brasil', NULL)
INSERT [dbo].[Usuario] ([id], [nome], [cpf], [sexo], [data_nascimento], [logradouro], [numero], [bairro], [cidade], [estado], [pais], [foto]) VALUES (14, N'Jandira', NULL, N'F', CAST(0x201E0B00 AS Date), N'ahenau', 19, N'aewsds', N'Orlandia', N'SP', N'Brasil', NULL)
INSERT [dbo].[Usuario] ([id], [nome], [cpf], [sexo], [data_nascimento], [logradouro], [numero], [bairro], [cidade], [estado], [pais], [foto]) VALUES (15, N'Leandro', NULL, N'M', CAST(0xC3150B00 AS Date), N'heuaheu', 456, N'aewsds', N'São Paulo', N'SP', N'Brasil', NULL)
SET IDENTITY_INSERT [dbo].[Usuario] OFF
/****** Object:  StoredProcedure [dbo].[Relatorio_Aniversariantes]    Script Date: 04/29/2014 18:53:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Relatorio_Aniversariantes]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
---------------------------------------------------------------------------
--Relatório para retornar o aniversariantes do mês
---------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[Relatorio_Aniversariantes]
	AS
	BEGIN
	SELECT Nome,
		YEAR(GETDATE()) - YEAR(data_nascimento) AS ''Idade''
		FROM Usuario
	WHERE DAY(data_nascimento) = DAY(GETDATE()) AND MONTH(data_nascimento) = MONTH(GETDATE())
	END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[rel_usuarios_estado]    Script Date: 04/29/2014 18:53:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[rel_usuarios_estado]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[rel_usuarios_estado]
	@estado varchar(2)
AS
	if (@estado is null)
		select estado AS Estado,COUNT(estado) AS Quantidade from Usuario group by estado
	else
		select cidade AS Cidade,COUNT(cidade) AS Quantidade from Usuario
		where estado = @estado group by cidade
' 
END
GO
/****** Object:  Table [dbo].[Telefone_U]    Script Date: 04/29/2014 18:53:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Telefone_U]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Telefone_U](
	[id_usuario] [int] NOT NULL,
	[telefone] [varchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC,
	[telefone] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Telefone_U] ([id_usuario], [telefone]) VALUES (1, N'123456')
INSERT [dbo].[Telefone_U] ([id_usuario], [telefone]) VALUES (2, N'21312')
INSERT [dbo].[Telefone_U] ([id_usuario], [telefone]) VALUES (3, N'3433454')
INSERT [dbo].[Telefone_U] ([id_usuario], [telefone]) VALUES (4, N'7566567')
INSERT [dbo].[Telefone_U] ([id_usuario], [telefone]) VALUES (5, N'3243243')
INSERT [dbo].[Telefone_U] ([id_usuario], [telefone]) VALUES (6, N'455456')
INSERT [dbo].[Telefone_U] ([id_usuario], [telefone]) VALUES (7, N'24334345')
INSERT [dbo].[Telefone_U] ([id_usuario], [telefone]) VALUES (8, N'4375677')
INSERT [dbo].[Telefone_U] ([id_usuario], [telefone]) VALUES (9, N'231321')
INSERT [dbo].[Telefone_U] ([id_usuario], [telefone]) VALUES (10, N'3454543')
INSERT [dbo].[Telefone_U] ([id_usuario], [telefone]) VALUES (11, N'66799887')
INSERT [dbo].[Telefone_U] ([id_usuario], [telefone]) VALUES (12, N'23432342')
INSERT [dbo].[Telefone_U] ([id_usuario], [telefone]) VALUES (13, N'4755576')
INSERT [dbo].[Telefone_U] ([id_usuario], [telefone]) VALUES (14, N'1231332')
INSERT [dbo].[Telefone_U] ([id_usuario], [telefone]) VALUES (15, N'54665')
/****** Object:  Table [dbo].[Telefone_E]    Script Date: 04/29/2014 18:53:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Telefone_E]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Telefone_E](
	[id_editora] [smallint] NOT NULL,
	[telefone] [varchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_editora] ASC,
	[telefone] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Telefone_E] ([id_editora], [telefone]) VALUES (1, N'11111111')
INSERT [dbo].[Telefone_E] ([id_editora], [telefone]) VALUES (6, N'5465654')
INSERT [dbo].[Telefone_E] ([id_editora], [telefone]) VALUES (7, N'54454545')
INSERT [dbo].[Telefone_E] ([id_editora], [telefone]) VALUES (9, N'33333333')
INSERT [dbo].[Telefone_E] ([id_editora], [telefone]) VALUES (10, N'3243234324')
INSERT [dbo].[Telefone_E] ([id_editora], [telefone]) VALUES (11, N'22222222')
INSERT [dbo].[Telefone_E] ([id_editora], [telefone]) VALUES (12, N'45566656')
INSERT [dbo].[Telefone_E] ([id_editora], [telefone]) VALUES (13, N'7543243')
INSERT [dbo].[Telefone_E] ([id_editora], [telefone]) VALUES (14, N'5676776')
INSERT [dbo].[Telefone_E] ([id_editora], [telefone]) VALUES (15, N'3545654')
INSERT [dbo].[Telefone_E] ([id_editora], [telefone]) VALUES (16, N'465565')
INSERT [dbo].[Telefone_E] ([id_editora], [telefone]) VALUES (17, N'345234')
INSERT [dbo].[Telefone_E] ([id_editora], [telefone]) VALUES (18, N'12324325')
INSERT [dbo].[Telefone_E] ([id_editora], [telefone]) VALUES (19, N'57867878')
INSERT [dbo].[Telefone_E] ([id_editora], [telefone]) VALUES (20, N'8776868')
/****** Object:  Table [dbo].[Email]    Script Date: 04/29/2014 18:53:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Email]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Email](
	[id_editora] [smallint] NOT NULL,
	[email] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_editora] ASC,
	[email] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Email] ([id_editora], [email]) VALUES (1, N'123@ka')
INSERT [dbo].[Email] ([id_editora], [email]) VALUES (6, N'1234@ka')
INSERT [dbo].[Email] ([id_editora], [email]) VALUES (7, N'1235@ka')
INSERT [dbo].[Email] ([id_editora], [email]) VALUES (9, N'1236@ka')
INSERT [dbo].[Email] ([id_editora], [email]) VALUES (10, N'1237@ka')
INSERT [dbo].[Email] ([id_editora], [email]) VALUES (11, N'1238@ka')
INSERT [dbo].[Email] ([id_editora], [email]) VALUES (12, N'1239@ka')
INSERT [dbo].[Email] ([id_editora], [email]) VALUES (13, N'rara@uhasu')
INSERT [dbo].[Email] ([id_editora], [email]) VALUES (14, N'12323@ka')
INSERT [dbo].[Email] ([id_editora], [email]) VALUES (15, N'1231234@ka')
INSERT [dbo].[Email] ([id_editora], [email]) VALUES (16, N'123354@ka')
INSERT [dbo].[Email] ([id_editora], [email]) VALUES (17, N'123vffdg@ka')
INSERT [dbo].[Email] ([id_editora], [email]) VALUES (18, N'12dfg3@ka')
INSERT [dbo].[Email] ([id_editora], [email]) VALUES (19, N'123kuykuy@ka')
INSERT [dbo].[Email] ([id_editora], [email]) VALUES (20, N'12bfg3@ka')
/****** Object:  Table [dbo].[Cartao]    Script Date: 04/29/2014 18:53:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cartao]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Cartao](
	[id_usuario] [int] NOT NULL,
	[bandeira] [varchar](10) NOT NULL,
	[numero] [varchar](20) NOT NULL,
	[validade] [varchar](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC,
	[numero] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Cartao] ([id_usuario], [bandeira], [numero], [validade]) VALUES (1, N'visa', N'123456', N'2017')
INSERT [dbo].[Cartao] ([id_usuario], [bandeira], [numero], [validade]) VALUES (2, N'MasterCard', N'123456', N'2017')
INSERT [dbo].[Cartao] ([id_usuario], [bandeira], [numero], [validade]) VALUES (3, N'MasterCard', N'123456', N'2017')
INSERT [dbo].[Cartao] ([id_usuario], [bandeira], [numero], [validade]) VALUES (4, N'American', N'123456', N'2017')
INSERT [dbo].[Cartao] ([id_usuario], [bandeira], [numero], [validade]) VALUES (5, N'visa', N'123456', N'2017')
INSERT [dbo].[Cartao] ([id_usuario], [bandeira], [numero], [validade]) VALUES (6, N'MasterCard', N'123456', N'2017')
INSERT [dbo].[Cartao] ([id_usuario], [bandeira], [numero], [validade]) VALUES (7, N'visa', N'123456', N'2017')
INSERT [dbo].[Cartao] ([id_usuario], [bandeira], [numero], [validade]) VALUES (8, N'American', N'123456', N'2017')
INSERT [dbo].[Cartao] ([id_usuario], [bandeira], [numero], [validade]) VALUES (9, N'MasterCard', N'123456', N'2017')
INSERT [dbo].[Cartao] ([id_usuario], [bandeira], [numero], [validade]) VALUES (10, N'visa', N'123456', N'2017')
INSERT [dbo].[Cartao] ([id_usuario], [bandeira], [numero], [validade]) VALUES (11, N'MasterCard', N'123456', N'2017')
INSERT [dbo].[Cartao] ([id_usuario], [bandeira], [numero], [validade]) VALUES (12, N'Dinners', N'123456', N'2017')
INSERT [dbo].[Cartao] ([id_usuario], [bandeira], [numero], [validade]) VALUES (13, N'visa', N'123456', N'2017')
INSERT [dbo].[Cartao] ([id_usuario], [bandeira], [numero], [validade]) VALUES (14, N'MasterCard', N'123456', N'2017')
INSERT [dbo].[Cartao] ([id_usuario], [bandeira], [numero], [validade]) VALUES (15, N'visa', N'123456', N'2017')
/****** Object:  Table [dbo].[Conversa]    Script Date: 04/29/2014 18:53:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Conversa]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Conversa](
	[id_user_de] [int] NOT NULL,
	[id_user_para] [int] NOT NULL,
	[mensagem] [text] NOT NULL,
	[data] [date] NOT NULL,
	[hora] [time](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_user_de] ASC,
	[id_user_para] ASC,
	[data] ASC,
	[hora] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
INSERT [dbo].[Conversa] ([id_user_de], [id_user_para], [mensagem], [data], [hora]) VALUES (1, 2, N'assadds', CAST(0x21380B00 AS Date), CAST(0x0700E03495640000 AS Time))
INSERT [dbo].[Conversa] ([id_user_de], [id_user_para], [mensagem], [data], [hora]) VALUES (1, 2, N'assadds', CAST(0x21380B00 AS Date), CAST(0x07009CD5FA650000 AS Time))
INSERT [dbo].[Conversa] ([id_user_de], [id_user_para], [mensagem], [data], [hora]) VALUES (2, 3, N'assadds', CAST(0x21380B00 AS Date), CAST(0x0700E03495640000 AS Time))
INSERT [dbo].[Conversa] ([id_user_de], [id_user_para], [mensagem], [data], [hora]) VALUES (3, 4, N'assadds', CAST(0x21380B00 AS Date), CAST(0x0700E03495640000 AS Time))
INSERT [dbo].[Conversa] ([id_user_de], [id_user_para], [mensagem], [data], [hora]) VALUES (4, 5, N'assadds', CAST(0x21380B00 AS Date), CAST(0x0700E03495640000 AS Time))
INSERT [dbo].[Conversa] ([id_user_de], [id_user_para], [mensagem], [data], [hora]) VALUES (5, 6, N'assadds', CAST(0x21380B00 AS Date), CAST(0x0700E03495640000 AS Time))
INSERT [dbo].[Conversa] ([id_user_de], [id_user_para], [mensagem], [data], [hora]) VALUES (6, 7, N'assadds', CAST(0x21380B00 AS Date), CAST(0x0700E03495640000 AS Time))
INSERT [dbo].[Conversa] ([id_user_de], [id_user_para], [mensagem], [data], [hora]) VALUES (7, 8, N'assadds', CAST(0x21380B00 AS Date), CAST(0x0700E03495640000 AS Time))
INSERT [dbo].[Conversa] ([id_user_de], [id_user_para], [mensagem], [data], [hora]) VALUES (8, 9, N'assadds', CAST(0x21380B00 AS Date), CAST(0x0700E03495640000 AS Time))
INSERT [dbo].[Conversa] ([id_user_de], [id_user_para], [mensagem], [data], [hora]) VALUES (9, 10, N'assadds', CAST(0x21380B00 AS Date), CAST(0x0700E03495640000 AS Time))
INSERT [dbo].[Conversa] ([id_user_de], [id_user_para], [mensagem], [data], [hora]) VALUES (10, 11, N'assadds', CAST(0x21380B00 AS Date), CAST(0x0700E03495640000 AS Time))
INSERT [dbo].[Conversa] ([id_user_de], [id_user_para], [mensagem], [data], [hora]) VALUES (11, 12, N'assadds', CAST(0x21380B00 AS Date), CAST(0x0700E03495640000 AS Time))
INSERT [dbo].[Conversa] ([id_user_de], [id_user_para], [mensagem], [data], [hora]) VALUES (12, 13, N'assadds', CAST(0x21380B00 AS Date), CAST(0x0700E03495640000 AS Time))
INSERT [dbo].[Conversa] ([id_user_de], [id_user_para], [mensagem], [data], [hora]) VALUES (14, 15, N'assadds', CAST(0x21380B00 AS Date), CAST(0x0700E03495640000 AS Time))
INSERT [dbo].[Conversa] ([id_user_de], [id_user_para], [mensagem], [data], [hora]) VALUES (15, 12, N'assadds', CAST(0x21380B00 AS Date), CAST(0x0700F0E066B80000 AS Time))
/****** Object:  Table [dbo].[Contato]    Script Date: 04/29/2014 18:53:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Contato]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Contato](
	[id_usuario] [int] NOT NULL,
	[id_Contato] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC,
	[id_Contato] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[Contato] ([id_usuario], [id_Contato]) VALUES (1, 2)
INSERT [dbo].[Contato] ([id_usuario], [id_Contato]) VALUES (2, 1)
INSERT [dbo].[Contato] ([id_usuario], [id_Contato]) VALUES (2, 3)
INSERT [dbo].[Contato] ([id_usuario], [id_Contato]) VALUES (3, 4)
INSERT [dbo].[Contato] ([id_usuario], [id_Contato]) VALUES (4, 5)
INSERT [dbo].[Contato] ([id_usuario], [id_Contato]) VALUES (4, 6)
INSERT [dbo].[Contato] ([id_usuario], [id_Contato]) VALUES (4, 9)
INSERT [dbo].[Contato] ([id_usuario], [id_Contato]) VALUES (5, 6)
INSERT [dbo].[Contato] ([id_usuario], [id_Contato]) VALUES (6, 7)
INSERT [dbo].[Contato] ([id_usuario], [id_Contato]) VALUES (7, 9)
INSERT [dbo].[Contato] ([id_usuario], [id_Contato]) VALUES (8, 9)
INSERT [dbo].[Contato] ([id_usuario], [id_Contato]) VALUES (9, 11)
INSERT [dbo].[Contato] ([id_usuario], [id_Contato]) VALUES (11, 12)
INSERT [dbo].[Contato] ([id_usuario], [id_Contato]) VALUES (14, 13)
INSERT [dbo].[Contato] ([id_usuario], [id_Contato]) VALUES (14, 15)
/****** Object:  Table [dbo].[Conta]    Script Date: 04/29/2014 18:53:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Conta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Conta](
	[id_usuario] [int] NOT NULL,
	[login] [varchar](15) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[senha] [varchar](15) NOT NULL,
	[data_cadastro] [date] NOT NULL,
	[pont_total] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[login] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Conta] ([id_usuario], [login], [email], [senha], [data_cadastro], [pont_total]) VALUES (13, N'Daniele', N'dandan@goggle.com', N'9548546', CAST(0x76380B00 AS Date), 0)
INSERT [dbo].[Conta] ([id_usuario], [login], [email], [senha], [data_cadastro], [pont_total]) VALUES (12, N'Isabela', N'isaisa@gmail.com', N'215456879', CAST(0x76380B00 AS Date), 0)
INSERT [dbo].[Conta] ([id_usuario], [login], [email], [senha], [data_cadastro], [pont_total]) VALUES (14, N'Jandira', N'eusouocara@unifei.edu.br', N'242424', CAST(0x0AB80A00 AS Date), 0)
INSERT [dbo].[Conta] ([id_usuario], [login], [email], [senha], [data_cadastro], [pont_total]) VALUES (7, N'Joana', N'joaninha@gmail.com', N'3908459', CAST(0x76380B00 AS Date), 0)
INSERT [dbo].[Conta] ([id_usuario], [login], [email], [senha], [data_cadastro], [pont_total]) VALUES (1, N'Jonathan', N'jojo@hotmail.com', N'123456', CAST(0x76380B00 AS Date), 0)
INSERT [dbo].[Conta] ([id_usuario], [login], [email], [senha], [data_cadastro], [pont_total]) VALUES (15, N'Leandro', N'cachorro@unifei.edu.br', N'1234574', CAST(0x76380B00 AS Date), 0)
INSERT [dbo].[Conta] ([id_usuario], [login], [email], [senha], [data_cadastro], [pont_total]) VALUES (9, N'Melise', N'meme@gmail.com', N'93083903', CAST(0x76380B00 AS Date), 0)
INSERT [dbo].[Conta] ([id_usuario], [login], [email], [senha], [data_cadastro], [pont_total]) VALUES (11, N'Miguel', N'mimi@provedor.com', N'576763', CAST(0x6F380B00 AS Date), 0)
INSERT [dbo].[Conta] ([id_usuario], [login], [email], [senha], [data_cadastro], [pont_total]) VALUES (2, N'Murillo', N'mumu@hotmail.com', N'1243325', CAST(0x76380B00 AS Date), 0)
INSERT [dbo].[Conta] ([id_usuario], [login], [email], [senha], [data_cadastro], [pont_total]) VALUES (6, N'Paula', N'paulinha@hotmail.com', N'34455748', CAST(0x77380B00 AS Date), 0)
INSERT [dbo].[Conta] ([id_usuario], [login], [email], [senha], [data_cadastro], [pont_total]) VALUES (3, N'Paulo', N'papa@hotmail.com', N'1432325', CAST(0x76380B00 AS Date), 0)
INSERT [dbo].[Conta] ([id_usuario], [login], [email], [senha], [data_cadastro], [pont_total]) VALUES (4, N'Rafael', N'rara@hotmail.com', N'7676465', CAST(0x76380B00 AS Date), 0)
INSERT [dbo].[Conta] ([id_usuario], [login], [email], [senha], [data_cadastro], [pont_total]) VALUES (8, N'Rafaela', N'rafazninha@unifei.edu.br', N'1233565', CAST(0x76380B00 AS Date), 0)
INSERT [dbo].[Conta] ([id_usuario], [login], [email], [senha], [data_cadastro], [pont_total]) VALUES (5, N'Silas', N'sasa@gmail.com', N'95854985', CAST(0x75380B00 AS Date), 0)
INSERT [dbo].[Conta] ([id_usuario], [login], [email], [senha], [data_cadastro], [pont_total]) VALUES (10, N'Thiago', N'thi@gmail.com', N'123343', CAST(0x76380B00 AS Date), 0)
/****** Object:  StoredProcedure [dbo].[Relatorio_usuarios_estado]    Script Date: 04/29/2014 18:53:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Relatorio_usuarios_estado]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
---------------------------------------------------------------------------
--Relatorio para retornar o número de usuarios por estado.
---------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[Relatorio_usuarios_estado]
	@estado VARCHAR(2)
	AS
	BEGIN
	--Se estado for nulo retorna o relatorio com todos os estados
	IF (@estado IS NULL)
		SELECT estado AS Estado,
			COUNT(estado) AS Quantidade
		FROM Usuario
		GROUP BY estado
	ELSE
	--Senão, retorna o relatório com apenas um estado
		SELECT cidade AS Cidade,
			COUNT(cidade) AS Quantidade
		FROM Usuario
		WHERE estado = @estado
		GROUP BY cidade 
	END
' 
END
GO
/****** Object:  Table [dbo].[Livro]    Script Date: 04/29/2014 18:53:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Livro]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Livro](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[titulo] [varchar](40) NOT NULL,
	[genero] [varchar](15) NULL,
	[sinopse] [text] NULL,
	[edicao] [varchar](10) NULL,
	[ano] [varchar](4) NULL,
	[capa] [varchar](40) NULL,
	[paginas] [smallint] NULL,
	[id_autor] [smallint] NULL,
	[id_editora] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Livro] ON
INSERT [dbo].[Livro] ([id], [titulo], [genero], [sinopse], [edicao], [ano], [capa], [paginas], [id_autor], [id_editora]) VALUES (2, N'Poeira em Alto Mar', N'Comedia', N'kasdjaksdjkalsdjaksd', N'5º', N'1990', NULL, 123, 1, 1)
INSERT [dbo].[Livro] ([id], [titulo], [genero], [sinopse], [edicao], [ano], [capa], [paginas], [id_autor], [id_editora]) VALUES (3, N'livro aberto', N'drama', N'iasuuhisaduh', N'6º', N'1993', NULL, 123, 2, 6)
INSERT [dbo].[Livro] ([id], [titulo], [genero], [sinopse], [edicao], [ano], [capa], [paginas], [id_autor], [id_editora]) VALUES (4, N'algoritmos', N'ficção', N'kasdjaksdjkalsdjaksd', N'5º', N'1992', NULL, 123, 3, 7)
INSERT [dbo].[Livro] ([id], [titulo], [genero], [sinopse], [edicao], [ano], [capa], [paginas], [id_autor], [id_editora]) VALUES (5, N'banco de dados', N'acadêmico', N'kasdjaksdjkalsdjaksd', N'4º', N'1990', NULL, 123, 4, 9)
INSERT [dbo].[Livro] ([id], [titulo], [genero], [sinopse], [edicao], [ano], [capa], [paginas], [id_autor], [id_editora]) VALUES (6, N'homem de ferro', N'aventura', N'kasdjaksdjkalsdjaksd', N'1º', N'2010', NULL, 123, 5, 10)
INSERT [dbo].[Livro] ([id], [titulo], [genero], [sinopse], [edicao], [ano], [capa], [paginas], [id_autor], [id_editora]) VALUES (7, N'harry potter', N'fantasia', N'kasdjaksdjkalsdjaksd', N'7º', N'1990', NULL, 123, 6, 11)
INSERT [dbo].[Livro] ([id], [titulo], [genero], [sinopse], [edicao], [ano], [capa], [paginas], [id_autor], [id_editora]) VALUES (8, N'o corvo', N'terror', N'kasdjaksdjkalsdjaksd', N'5º', N'1990', NULL, 123, 7, 12)
INSERT [dbo].[Livro] ([id], [titulo], [genero], [sinopse], [edicao], [ano], [capa], [paginas], [id_autor], [id_editora]) VALUES (9, N'Bolacha', N'Ficção', N'kasdjaksdjkalsdjaksd', N'12º', N'2012', NULL, 123, 8, 13)
INSERT [dbo].[Livro] ([id], [titulo], [genero], [sinopse], [edicao], [ano], [capa], [paginas], [id_autor], [id_editora]) VALUES (10, N'A volta dos que não foram', N'Comedia', N'kasdjaksdjkalsdjaksd', N'5º', N'1990', NULL, 123, 9, 14)
INSERT [dbo].[Livro] ([id], [titulo], [genero], [sinopse], [edicao], [ano], [capa], [paginas], [id_autor], [id_editora]) VALUES (11, N'poeira em baixo maar', N'drama', N'kasdjaksdjkalsdjaksd', N'11º', N'1990', NULL, 123, 10, 15)
INSERT [dbo].[Livro] ([id], [titulo], [genero], [sinopse], [edicao], [ano], [capa], [paginas], [id_autor], [id_editora]) VALUES (12, N'A orca', N'Suspense', N'kasdjaksdjkalsdjaksd', N'2º', N'2009', NULL, 123, 11, 16)
INSERT [dbo].[Livro] ([id], [titulo], [genero], [sinopse], [edicao], [ano], [capa], [paginas], [id_autor], [id_editora]) VALUES (13, N'automatos', N'ficção', N'kasdjaksdjkalsdjaksd', N'1º', N'1990', NULL, 123, 12, 17)
INSERT [dbo].[Livro] ([id], [titulo], [genero], [sinopse], [edicao], [ano], [capa], [paginas], [id_autor], [id_editora]) VALUES (14, N'compiladores', N'ficção', N'kasdjaksdjkalsdjaksd', N'5º', N'1990', NULL, 123, 13, 18)
INSERT [dbo].[Livro] ([id], [titulo], [genero], [sinopse], [edicao], [ano], [capa], [paginas], [id_autor], [id_editora]) VALUES (15, N'11 homens e um segredo', N'aventura', N'kasdjaksdjkalsdjaksd', N'13º', N'1994', NULL, 123, 14, 19)
INSERT [dbo].[Livro] ([id], [titulo], [genero], [sinopse], [edicao], [ano], [capa], [paginas], [id_autor], [id_editora]) VALUES (16, N'Da vinci''s demon', N'suspense', N'kasdjaksdjkalsdjaksd', N'5º', N'1990', NULL, 123, 15, 20)
SET IDENTITY_INSERT [dbo].[Livro] OFF
/****** Object:  Table [dbo].[Fisico]    Script Date: 04/29/2014 18:53:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Fisico]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Fisico](
	[id_livro] [int] NOT NULL,
	[material] [varchar](20) NULL,
	[peso] [varchar](6) NULL,
	[altura] [varchar](6) NULL,
	[largura] [varchar](6) NULL,
	[preco_medio] [numeric](4, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_livro] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Fisico] ([id_livro], [material], [peso], [altura], [largura], [preco_medio]) VALUES (2, N'papel', NULL, NULL, NULL, CAST(10.00 AS Numeric(4, 2)))
INSERT [dbo].[Fisico] ([id_livro], [material], [peso], [altura], [largura], [preco_medio]) VALUES (3, N'papel', NULL, NULL, NULL, CAST(10.00 AS Numeric(4, 2)))
INSERT [dbo].[Fisico] ([id_livro], [material], [peso], [altura], [largura], [preco_medio]) VALUES (4, N'papel', NULL, NULL, NULL, CAST(10.00 AS Numeric(4, 2)))
INSERT [dbo].[Fisico] ([id_livro], [material], [peso], [altura], [largura], [preco_medio]) VALUES (5, N'papel', NULL, NULL, NULL, CAST(10.00 AS Numeric(4, 2)))
INSERT [dbo].[Fisico] ([id_livro], [material], [peso], [altura], [largura], [preco_medio]) VALUES (6, N'papel', NULL, NULL, NULL, CAST(10.00 AS Numeric(4, 2)))
INSERT [dbo].[Fisico] ([id_livro], [material], [peso], [altura], [largura], [preco_medio]) VALUES (7, N'papel', NULL, NULL, NULL, CAST(10.00 AS Numeric(4, 2)))
INSERT [dbo].[Fisico] ([id_livro], [material], [peso], [altura], [largura], [preco_medio]) VALUES (8, N'papel', NULL, NULL, NULL, CAST(10.00 AS Numeric(4, 2)))
INSERT [dbo].[Fisico] ([id_livro], [material], [peso], [altura], [largura], [preco_medio]) VALUES (9, N'papel', NULL, NULL, NULL, CAST(10.00 AS Numeric(4, 2)))
INSERT [dbo].[Fisico] ([id_livro], [material], [peso], [altura], [largura], [preco_medio]) VALUES (10, N'papel', NULL, NULL, NULL, CAST(10.00 AS Numeric(4, 2)))
INSERT [dbo].[Fisico] ([id_livro], [material], [peso], [altura], [largura], [preco_medio]) VALUES (11, N'papel', NULL, NULL, NULL, CAST(10.00 AS Numeric(4, 2)))
INSERT [dbo].[Fisico] ([id_livro], [material], [peso], [altura], [largura], [preco_medio]) VALUES (12, N'papel', NULL, NULL, NULL, CAST(10.00 AS Numeric(4, 2)))
INSERT [dbo].[Fisico] ([id_livro], [material], [peso], [altura], [largura], [preco_medio]) VALUES (13, N'papel', NULL, NULL, NULL, CAST(10.00 AS Numeric(4, 2)))
INSERT [dbo].[Fisico] ([id_livro], [material], [peso], [altura], [largura], [preco_medio]) VALUES (14, N'papel', NULL, NULL, NULL, CAST(10.00 AS Numeric(4, 2)))
INSERT [dbo].[Fisico] ([id_livro], [material], [peso], [altura], [largura], [preco_medio]) VALUES (15, N'papel', NULL, NULL, NULL, CAST(10.00 AS Numeric(4, 2)))
INSERT [dbo].[Fisico] ([id_livro], [material], [peso], [altura], [largura], [preco_medio]) VALUES (16, N'papel', NULL, NULL, NULL, CAST(10.00 AS Numeric(4, 2)))
/****** Object:  Table [dbo].[Marca]    Script Date: 04/29/2014 18:53:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Marca]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Marca](
	[id_usuario] [int] NOT NULL,
	[id_livro] [int] NOT NULL,
	[emprestado] [bit] NOT NULL,
	[tenho] [bit] NOT NULL,
	[troco] [bit] NOT NULL,
	[desejado] [bit] NOT NULL,
	[favorito] [bit] NOT NULL,
	[status] [varchar](26) NOT NULL,
	[emprestado_para] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC,
	[id_livro] ASC,
	[status] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[Relatorio_Top50]    Script Date: 04/29/2014 18:53:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Relatorio_Top50]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
---------------------------------------------------------------------------
-- Procedure para retornar a quantidade de pessoas que deseja cada livro selecionando determinado gênero
---------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[Relatorio_Top50]
@genero varchar(15)
	AS
	BEGIN
	IF (@genero IS NOT NULL)
		SELECT TOP 50 COUNT(*) AS ''Qtd'',
			Titulo AS ''Titulo''
		FROM Livro
		WHERE genero = @genero
		GROUP BY Titulo
	ELSE
		SELECT ''Este relatório requer parâmetros'' AS ''Erro''
	END
' 
END
GO
/****** Object:  Table [dbo].[Comenta]    Script Date: 04/29/2014 18:53:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Comenta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Comenta](
	[id_usuario] [int] NOT NULL,
	[id_livro] [int] NOT NULL,
	[mensagem] [text] NOT NULL,
	[data] [date] NOT NULL,
	[hora] [time](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC,
	[id_livro] ASC,
	[data] ASC,
	[hora] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
INSERT [dbo].[Comenta] ([id_usuario], [id_livro], [mensagem], [data], [hora]) VALUES (1, 2, N'ehiasashi', CAST(0x75380B00 AS Date), CAST(0x070094D15BA70000 AS Time))
INSERT [dbo].[Comenta] ([id_usuario], [id_livro], [mensagem], [data], [hora]) VALUES (2, 3, N'ehiasashi', CAST(0x75380B00 AS Date), CAST(0x070094D15BA70000 AS Time))
INSERT [dbo].[Comenta] ([id_usuario], [id_livro], [mensagem], [data], [hora]) VALUES (3, 4, N'ehiasashi', CAST(0x75380B00 AS Date), CAST(0x070094D15BA70000 AS Time))
INSERT [dbo].[Comenta] ([id_usuario], [id_livro], [mensagem], [data], [hora]) VALUES (4, 5, N'ehiasashi', CAST(0x75380B00 AS Date), CAST(0x070094D15BA70000 AS Time))
INSERT [dbo].[Comenta] ([id_usuario], [id_livro], [mensagem], [data], [hora]) VALUES (5, 6, N'ehiasashi', CAST(0x75380B00 AS Date), CAST(0x070094D15BA70000 AS Time))
INSERT [dbo].[Comenta] ([id_usuario], [id_livro], [mensagem], [data], [hora]) VALUES (6, 7, N'ehiasashi', CAST(0x75380B00 AS Date), CAST(0x070094D15BA70000 AS Time))
INSERT [dbo].[Comenta] ([id_usuario], [id_livro], [mensagem], [data], [hora]) VALUES (7, 8, N'ehiasashi', CAST(0x75380B00 AS Date), CAST(0x070094D15BA70000 AS Time))
INSERT [dbo].[Comenta] ([id_usuario], [id_livro], [mensagem], [data], [hora]) VALUES (8, 9, N'ehiasashi', CAST(0x75380B00 AS Date), CAST(0x070094D15BA70000 AS Time))
INSERT [dbo].[Comenta] ([id_usuario], [id_livro], [mensagem], [data], [hora]) VALUES (9, 10, N'ehiasashi', CAST(0x75380B00 AS Date), CAST(0x070094D15BA70000 AS Time))
INSERT [dbo].[Comenta] ([id_usuario], [id_livro], [mensagem], [data], [hora]) VALUES (10, 11, N'ehiasashi', CAST(0x75380B00 AS Date), CAST(0x070094D15BA70000 AS Time))
INSERT [dbo].[Comenta] ([id_usuario], [id_livro], [mensagem], [data], [hora]) VALUES (12, 13, N'ehiasashi', CAST(0x75380B00 AS Date), CAST(0x070094D15BA70000 AS Time))
INSERT [dbo].[Comenta] ([id_usuario], [id_livro], [mensagem], [data], [hora]) VALUES (13, 14, N'ehiasashi', CAST(0x75380B00 AS Date), CAST(0x070094D15BA70000 AS Time))
INSERT [dbo].[Comenta] ([id_usuario], [id_livro], [mensagem], [data], [hora]) VALUES (14, 15, N'ehiasashi', CAST(0x75380B00 AS Date), CAST(0x070094D15BA70000 AS Time))
INSERT [dbo].[Comenta] ([id_usuario], [id_livro], [mensagem], [data], [hora]) VALUES (15, 16, N'ehiasashi', CAST(0x75380B00 AS Date), CAST(0x070094D15BA70000 AS Time))
/****** Object:  Table [dbo].[Assinatura]    Script Date: 04/29/2014 18:53:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Assinatura]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Assinatura](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_usuario] [int] NOT NULL,
	[id_pacote] [int] NOT NULL,
	[valor] [numeric](4, 2) NOT NULL,
	[data] [date] NOT NULL,
	[hora] [time](7) NOT NULL,
	[validade] [date] NOT NULL,
	[pontuacao] [smallint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[Assinatura] ON
INSERT [dbo].[Assinatura] ([id], [id_usuario], [id_pacote], [valor], [data], [hora], [validade], [pontuacao]) VALUES (1, 1, 1, CAST(12.00 AS Numeric(4, 2)), CAST(0x5F380B00 AS Date), CAST(0x070080461C860000 AS Time), CAST(0x6A3A0B00 AS Date), 2)
INSERT [dbo].[Assinatura] ([id], [id_usuario], [id_pacote], [valor], [data], [hora], [validade], [pontuacao]) VALUES (2, 2, 2, CAST(12.00 AS Numeric(4, 2)), CAST(0x5F380B00 AS Date), CAST(0x070080461C860000 AS Time), CAST(0x6A3A0B00 AS Date), 2)
INSERT [dbo].[Assinatura] ([id], [id_usuario], [id_pacote], [valor], [data], [hora], [validade], [pontuacao]) VALUES (3, 3, 3, CAST(12.00 AS Numeric(4, 2)), CAST(0x5F380B00 AS Date), CAST(0x070080461C860000 AS Time), CAST(0x6A3A0B00 AS Date), 2)
INSERT [dbo].[Assinatura] ([id], [id_usuario], [id_pacote], [valor], [data], [hora], [validade], [pontuacao]) VALUES (4, 4, 4, CAST(12.00 AS Numeric(4, 2)), CAST(0x5F380B00 AS Date), CAST(0x070080461C860000 AS Time), CAST(0x6A3A0B00 AS Date), 2)
INSERT [dbo].[Assinatura] ([id], [id_usuario], [id_pacote], [valor], [data], [hora], [validade], [pontuacao]) VALUES (5, 5, 5, CAST(12.00 AS Numeric(4, 2)), CAST(0x5F380B00 AS Date), CAST(0x070080461C860000 AS Time), CAST(0x6A3A0B00 AS Date), 2)
INSERT [dbo].[Assinatura] ([id], [id_usuario], [id_pacote], [valor], [data], [hora], [validade], [pontuacao]) VALUES (6, 6, 6, CAST(12.00 AS Numeric(4, 2)), CAST(0x5F380B00 AS Date), CAST(0x070080461C860000 AS Time), CAST(0x6A3A0B00 AS Date), 2)
INSERT [dbo].[Assinatura] ([id], [id_usuario], [id_pacote], [valor], [data], [hora], [validade], [pontuacao]) VALUES (7, 7, 7, CAST(12.00 AS Numeric(4, 2)), CAST(0x5F380B00 AS Date), CAST(0x070080461C860000 AS Time), CAST(0x6A3A0B00 AS Date), 2)
INSERT [dbo].[Assinatura] ([id], [id_usuario], [id_pacote], [valor], [data], [hora], [validade], [pontuacao]) VALUES (8, 8, 8, CAST(12.00 AS Numeric(4, 2)), CAST(0x5F380B00 AS Date), CAST(0x070080461C860000 AS Time), CAST(0x6A3A0B00 AS Date), 2)
INSERT [dbo].[Assinatura] ([id], [id_usuario], [id_pacote], [valor], [data], [hora], [validade], [pontuacao]) VALUES (9, 9, 9, CAST(12.00 AS Numeric(4, 2)), CAST(0x5F380B00 AS Date), CAST(0x070080461C860000 AS Time), CAST(0x6A3A0B00 AS Date), 2)
INSERT [dbo].[Assinatura] ([id], [id_usuario], [id_pacote], [valor], [data], [hora], [validade], [pontuacao]) VALUES (10, 10, 10, CAST(12.00 AS Numeric(4, 2)), CAST(0x5F380B00 AS Date), CAST(0x070080461C860000 AS Time), CAST(0x6A3A0B00 AS Date), 2)
INSERT [dbo].[Assinatura] ([id], [id_usuario], [id_pacote], [valor], [data], [hora], [validade], [pontuacao]) VALUES (11, 11, 11, CAST(12.00 AS Numeric(4, 2)), CAST(0x5F380B00 AS Date), CAST(0x070080461C860000 AS Time), CAST(0x6A3A0B00 AS Date), 2)
INSERT [dbo].[Assinatura] ([id], [id_usuario], [id_pacote], [valor], [data], [hora], [validade], [pontuacao]) VALUES (12, 12, 12, CAST(12.00 AS Numeric(4, 2)), CAST(0x5F380B00 AS Date), CAST(0x070080461C860000 AS Time), CAST(0x6A3A0B00 AS Date), 2)
INSERT [dbo].[Assinatura] ([id], [id_usuario], [id_pacote], [valor], [data], [hora], [validade], [pontuacao]) VALUES (13, 13, 13, CAST(12.00 AS Numeric(4, 2)), CAST(0x5F380B00 AS Date), CAST(0x070080461C860000 AS Time), CAST(0x6A3A0B00 AS Date), 2)
INSERT [dbo].[Assinatura] ([id], [id_usuario], [id_pacote], [valor], [data], [hora], [validade], [pontuacao]) VALUES (14, 14, 14, CAST(12.00 AS Numeric(4, 2)), CAST(0x5F380B00 AS Date), CAST(0x070080461C860000 AS Time), CAST(0x6A3A0B00 AS Date), 2)
INSERT [dbo].[Assinatura] ([id], [id_usuario], [id_pacote], [valor], [data], [hora], [validade], [pontuacao]) VALUES (15, 15, 15, CAST(12.00 AS Numeric(4, 2)), CAST(0x5F380B00 AS Date), CAST(0x070080461C860000 AS Time), CAST(0x6A3A0B00 AS Date), 2)
SET IDENTITY_INSERT [dbo].[Assinatura] OFF
/****** Object:  Table [dbo].[Digital]    Script Date: 04/29/2014 18:53:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Digital]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Digital](
	[id_livro] [int] NOT NULL,
	[codigo] [varchar](13) NULL,
	[tamanho] [varchar](5) NOT NULL,
	[formato] [varchar](4) NOT NULL,
	[preco_normal] [numeric](4, 2) NOT NULL,
	[preco_asn] [numeric](4, 2) NOT NULL,
	[caminho] [varchar](40) NOT NULL,
	[disponivel] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_livro] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Digital] ([id_livro], [codigo], [tamanho], [formato], [preco_normal], [preco_asn], [caminho], [disponivel]) VALUES (2, N'EBK000001', N'155mb', N'pdf', CAST(10.00 AS Numeric(4, 2)), CAST(2.00 AS Numeric(4, 2)), N'akedjak', 1)
INSERT [dbo].[Digital] ([id_livro], [codigo], [tamanho], [formato], [preco_normal], [preco_asn], [caminho], [disponivel]) VALUES (3, N'EBK000002', N'155mb', N'pdf', CAST(20.00 AS Numeric(4, 2)), CAST(2.00 AS Numeric(4, 2)), N'akedjak', 1)
INSERT [dbo].[Digital] ([id_livro], [codigo], [tamanho], [formato], [preco_normal], [preco_asn], [caminho], [disponivel]) VALUES (4, N'EBK000003', N'155mb', N'pdf', CAST(12.00 AS Numeric(4, 2)), CAST(2.00 AS Numeric(4, 2)), N'akedjak', 1)
INSERT [dbo].[Digital] ([id_livro], [codigo], [tamanho], [formato], [preco_normal], [preco_asn], [caminho], [disponivel]) VALUES (5, N'EBK000004', N'155mb', N'pdf', CAST(19.00 AS Numeric(4, 2)), CAST(2.00 AS Numeric(4, 2)), N'akedjak', 1)
INSERT [dbo].[Digital] ([id_livro], [codigo], [tamanho], [formato], [preco_normal], [preco_asn], [caminho], [disponivel]) VALUES (6, N'EBK000005', N'155mb', N'pdf', CAST(30.00 AS Numeric(4, 2)), CAST(2.00 AS Numeric(4, 2)), N'akedjak', 1)
INSERT [dbo].[Digital] ([id_livro], [codigo], [tamanho], [formato], [preco_normal], [preco_asn], [caminho], [disponivel]) VALUES (7, N'EBK000006', N'155mb', N'pdf', CAST(40.00 AS Numeric(4, 2)), CAST(2.00 AS Numeric(4, 2)), N'akedjak', 1)
INSERT [dbo].[Digital] ([id_livro], [codigo], [tamanho], [formato], [preco_normal], [preco_asn], [caminho], [disponivel]) VALUES (8, N'EBK000007', N'155mb', N'pdf', CAST(12.00 AS Numeric(4, 2)), CAST(2.00 AS Numeric(4, 2)), N'akedjak', 1)
INSERT [dbo].[Digital] ([id_livro], [codigo], [tamanho], [formato], [preco_normal], [preco_asn], [caminho], [disponivel]) VALUES (9, N'EBK000008', N'155mb', N'pdf', CAST(9.00 AS Numeric(4, 2)), CAST(2.00 AS Numeric(4, 2)), N'akedjak', 1)
INSERT [dbo].[Digital] ([id_livro], [codigo], [tamanho], [formato], [preco_normal], [preco_asn], [caminho], [disponivel]) VALUES (10, N'EBK000009', N'155mb', N'pdf', CAST(14.90 AS Numeric(4, 2)), CAST(2.00 AS Numeric(4, 2)), N'akedjak', 1)
INSERT [dbo].[Digital] ([id_livro], [codigo], [tamanho], [formato], [preco_normal], [preco_asn], [caminho], [disponivel]) VALUES (11, N'EBK000010', N'155mb', N'pdf', CAST(10.00 AS Numeric(4, 2)), CAST(2.00 AS Numeric(4, 2)), N'akedjak', 1)
INSERT [dbo].[Digital] ([id_livro], [codigo], [tamanho], [formato], [preco_normal], [preco_asn], [caminho], [disponivel]) VALUES (12, N'EBK000011', N'155mb', N'pdf', CAST(12.99 AS Numeric(4, 2)), CAST(2.00 AS Numeric(4, 2)), N'akedjak', 1)
INSERT [dbo].[Digital] ([id_livro], [codigo], [tamanho], [formato], [preco_normal], [preco_asn], [caminho], [disponivel]) VALUES (13, N'EBK000012', N'155mb', N'pdf', CAST(89.99 AS Numeric(4, 2)), CAST(2.00 AS Numeric(4, 2)), N'akedjak', 1)
INSERT [dbo].[Digital] ([id_livro], [codigo], [tamanho], [formato], [preco_normal], [preco_asn], [caminho], [disponivel]) VALUES (14, N'EBK000013', N'155mb', N'pdf', CAST(59.90 AS Numeric(4, 2)), CAST(2.00 AS Numeric(4, 2)), N'akedjak', 1)
INSERT [dbo].[Digital] ([id_livro], [codigo], [tamanho], [formato], [preco_normal], [preco_asn], [caminho], [disponivel]) VALUES (15, N'EBK000014', N'155mb', N'pdf', CAST(35.20 AS Numeric(4, 2)), CAST(2.00 AS Numeric(4, 2)), N'akedjak', 1)
INSERT [dbo].[Digital] ([id_livro], [codigo], [tamanho], [formato], [preco_normal], [preco_asn], [caminho], [disponivel]) VALUES (16, N'EBK000015', N'155mb', N'pdf', CAST(10.00 AS Numeric(4, 2)), CAST(2.00 AS Numeric(4, 2)), N'akedjak', 1)
/****** Object:  Table [dbo].[Resenha]    Script Date: 04/29/2014 18:53:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Resenha]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Resenha](
	[id_usuario] [int] NOT NULL,
	[id_livro] [int] NOT NULL,
	[mensagem] [text] NOT NULL,
	[data] [date] NOT NULL,
	[hora] [time](7) NOT NULL,
	[ativo] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC,
	[id_livro] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
INSERT [dbo].[Resenha] ([id_usuario], [id_livro], [mensagem], [data], [hora], [ativo]) VALUES (1, 2, N'uiashiuas', CAST(0x75380B00 AS Date), CAST(0x0700448E02580000 AS Time), 1)
INSERT [dbo].[Resenha] ([id_usuario], [id_livro], [mensagem], [data], [hora], [ativo]) VALUES (2, 3, N'uiashiuas', CAST(0x75380B00 AS Date), CAST(0x0700448E02580000 AS Time), 1)
INSERT [dbo].[Resenha] ([id_usuario], [id_livro], [mensagem], [data], [hora], [ativo]) VALUES (3, 4, N'uiashiuas', CAST(0x75380B00 AS Date), CAST(0x0700448E02580000 AS Time), 1)
INSERT [dbo].[Resenha] ([id_usuario], [id_livro], [mensagem], [data], [hora], [ativo]) VALUES (4, 5, N'uiashiuas', CAST(0x75380B00 AS Date), CAST(0x0700448E02580000 AS Time), 1)
INSERT [dbo].[Resenha] ([id_usuario], [id_livro], [mensagem], [data], [hora], [ativo]) VALUES (5, 6, N'uiashiuas', CAST(0x75380B00 AS Date), CAST(0x0700448E02580000 AS Time), 1)
INSERT [dbo].[Resenha] ([id_usuario], [id_livro], [mensagem], [data], [hora], [ativo]) VALUES (6, 7, N'uiashiuas', CAST(0x75380B00 AS Date), CAST(0x0700448E02580000 AS Time), 1)
INSERT [dbo].[Resenha] ([id_usuario], [id_livro], [mensagem], [data], [hora], [ativo]) VALUES (7, 8, N'uiashiuas', CAST(0x75380B00 AS Date), CAST(0x0700448E02580000 AS Time), 1)
INSERT [dbo].[Resenha] ([id_usuario], [id_livro], [mensagem], [data], [hora], [ativo]) VALUES (8, 9, N'uiashiuas', CAST(0x75380B00 AS Date), CAST(0x0700448E02580000 AS Time), 1)
INSERT [dbo].[Resenha] ([id_usuario], [id_livro], [mensagem], [data], [hora], [ativo]) VALUES (9, 10, N'uiashiuas', CAST(0x75380B00 AS Date), CAST(0x0700448E02580000 AS Time), 1)
INSERT [dbo].[Resenha] ([id_usuario], [id_livro], [mensagem], [data], [hora], [ativo]) VALUES (10, 11, N'uiashiuas', CAST(0x75380B00 AS Date), CAST(0x0700448E02580000 AS Time), 1)
INSERT [dbo].[Resenha] ([id_usuario], [id_livro], [mensagem], [data], [hora], [ativo]) VALUES (11, 12, N'uiashiuas', CAST(0x75380B00 AS Date), CAST(0x0700448E02580000 AS Time), 1)
INSERT [dbo].[Resenha] ([id_usuario], [id_livro], [mensagem], [data], [hora], [ativo]) VALUES (12, 13, N'uiashiuas', CAST(0x75380B00 AS Date), CAST(0x0700448E02580000 AS Time), 1)
INSERT [dbo].[Resenha] ([id_usuario], [id_livro], [mensagem], [data], [hora], [ativo]) VALUES (13, 14, N'uiashiuas', CAST(0x75380B00 AS Date), CAST(0x0700448E02580000 AS Time), 1)
INSERT [dbo].[Resenha] ([id_usuario], [id_livro], [mensagem], [data], [hora], [ativo]) VALUES (14, 15, N'uiashiuas', CAST(0x75380B00 AS Date), CAST(0x0700448E02580000 AS Time), 1)
INSERT [dbo].[Resenha] ([id_usuario], [id_livro], [mensagem], [data], [hora], [ativo]) VALUES (15, 16, N'uiashiuas', CAST(0x75380B00 AS Date), CAST(0x0700448E02580000 AS Time), 1)
/****** Object:  Table [dbo].[Venda]    Script Date: 04/29/2014 18:53:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Venda]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Venda](
	[id_usuario] [int] NOT NULL,
	[id_ebook] [int] NOT NULL,
	[valor] [numeric](4, 2) NOT NULL,
	[data] [date] NOT NULL,
	[hora] [time](7) NOT NULL,
	[pontuacao] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC,
	[id_ebook] ASC,
	[data] ASC,
	[hora] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Venda] ([id_usuario], [id_ebook], [valor], [data], [hora], [pontuacao]) VALUES (1, 2, CAST(10.00 AS Numeric(4, 2)), CAST(0x2F390B00 AS Date), CAST(0x07002C35385C0000 AS Time), N'2')
INSERT [dbo].[Venda] ([id_usuario], [id_ebook], [valor], [data], [hora], [pontuacao]) VALUES (1, 2, CAST(10.00 AS Numeric(4, 2)), CAST(0x2F390B00 AS Date), CAST(0x070024942F630000 AS Time), N'2')
INSERT [dbo].[Venda] ([id_usuario], [id_ebook], [valor], [data], [hora], [pontuacao]) VALUES (1, 3, CAST(10.00 AS Numeric(4, 2)), CAST(0x2F390B00 AS Date), CAST(0x07007870335C0000 AS Time), N'2')
INSERT [dbo].[Venda] ([id_usuario], [id_ebook], [valor], [data], [hora], [pontuacao]) VALUES (1, 9, CAST(10.00 AS Numeric(4, 2)), CAST(0x31390B00 AS Date), CAST(0x0700B893419F0000 AS Time), N'2')
INSERT [dbo].[Venda] ([id_usuario], [id_ebook], [valor], [data], [hora], [pontuacao]) VALUES (1, 16, CAST(10.00 AS Numeric(4, 2)), CAST(0x2F390B00 AS Date), CAST(0x070058A5C8C00000 AS Time), N'2')
INSERT [dbo].[Venda] ([id_usuario], [id_ebook], [valor], [data], [hora], [pontuacao]) VALUES (3, 2, CAST(10.00 AS Numeric(4, 2)), CAST(0x2F390B00 AS Date), CAST(0x0780E75D31630000 AS Time), N'2')
INSERT [dbo].[Venda] ([id_usuario], [id_ebook], [valor], [data], [hora], [pontuacao]) VALUES (4, 2, CAST(10.00 AS Numeric(4, 2)), CAST(0x2F390B00 AS Date), CAST(0x0700B893419F0000 AS Time), N'2')
INSERT [dbo].[Venda] ([id_usuario], [id_ebook], [valor], [data], [hora], [pontuacao]) VALUES (4, 2, CAST(10.00 AS Numeric(4, 2)), CAST(0x30390B00 AS Date), CAST(0x0700540B6C520000 AS Time), N'2')
INSERT [dbo].[Venda] ([id_usuario], [id_ebook], [valor], [data], [hora], [pontuacao]) VALUES (5, 2, CAST(10.00 AS Numeric(4, 2)), CAST(0x2F390B00 AS Date), CAST(0x070044BD6AB10000 AS Time), N'2')
INSERT [dbo].[Venda] ([id_usuario], [id_ebook], [valor], [data], [hora], [pontuacao]) VALUES (6, 3, CAST(10.00 AS Numeric(4, 2)), CAST(0x30390B00 AS Date), CAST(0x070050CFDF960000 AS Time), N'2')
INSERT [dbo].[Venda] ([id_usuario], [id_ebook], [valor], [data], [hora], [pontuacao]) VALUES (7, 2, CAST(10.00 AS Numeric(4, 2)), CAST(0x2F390B00 AS Date), CAST(0x070068C461080000 AS Time), N'2')
INSERT [dbo].[Venda] ([id_usuario], [id_ebook], [valor], [data], [hora], [pontuacao]) VALUES (8, 2, CAST(10.00 AS Numeric(4, 2)), CAST(0x2F390B00 AS Date), CAST(0x0700D66F4EB60000 AS Time), N'2')
INSERT [dbo].[Venda] ([id_usuario], [id_ebook], [valor], [data], [hora], [pontuacao]) VALUES (9, 11, CAST(10.00 AS Numeric(4, 2)), CAST(0x2F390B00 AS Date), CAST(0x0700881C05B00000 AS Time), N'2')
INSERT [dbo].[Venda] ([id_usuario], [id_ebook], [valor], [data], [hora], [pontuacao]) VALUES (12, 12, CAST(10.00 AS Numeric(4, 2)), CAST(0x2F390B00 AS Date), CAST(0x0700D640E65C0000 AS Time), N'2')
INSERT [dbo].[Venda] ([id_usuario], [id_ebook], [valor], [data], [hora], [pontuacao]) VALUES (14, 12, CAST(10.00 AS Numeric(4, 2)), CAST(0x2F390B00 AS Date), CAST(0x070048F9F66C0000 AS Time), N'2')
/****** Object:  Table [dbo].[Troca]    Script Date: 04/29/2014 18:53:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Troca]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Troca](
	[id_user_de] [int] NOT NULL,
	[id_user_para] [int] NOT NULL,
	[id_livro] [int] NOT NULL,
	[data] [date] NOT NULL,
	[hora] [time](7) NOT NULL,
	[pontuacao] [smallint] NULL,
	[status] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_user_de] ASC,
	[id_user_para] ASC,
	[data] ASC,
	[hora] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Troca] ([id_user_de], [id_user_para], [id_livro], [data], [hora], [pontuacao], [status]) VALUES (1, 2, 2, CAST(0x76380B00 AS Date), CAST(0x07007A6043A50000 AS Time), 1, N'1')
INSERT [dbo].[Troca] ([id_user_de], [id_user_para], [id_livro], [data], [hora], [pontuacao], [status]) VALUES (1, 10, 7, CAST(0x76380B00 AS Date), CAST(0x07007A6043A50000 AS Time), 1, N'1')
INSERT [dbo].[Troca] ([id_user_de], [id_user_para], [id_livro], [data], [hora], [pontuacao], [status]) VALUES (2, 3, 3, CAST(0x76380B00 AS Date), CAST(0x07007A6043A50000 AS Time), 1, N'1')
INSERT [dbo].[Troca] ([id_user_de], [id_user_para], [id_livro], [data], [hora], [pontuacao], [status]) VALUES (3, 4, 4, CAST(0x76380B00 AS Date), CAST(0x07007A6043A50000 AS Time), 1, N'1')
INSERT [dbo].[Troca] ([id_user_de], [id_user_para], [id_livro], [data], [hora], [pontuacao], [status]) VALUES (4, 5, 5, CAST(0x76380B00 AS Date), CAST(0x07007A6043A50000 AS Time), 1, N'1')
INSERT [dbo].[Troca] ([id_user_de], [id_user_para], [id_livro], [data], [hora], [pontuacao], [status]) VALUES (5, 6, 6, CAST(0x76380B00 AS Date), CAST(0x07007A6043A50000 AS Time), 1, N'1')
INSERT [dbo].[Troca] ([id_user_de], [id_user_para], [id_livro], [data], [hora], [pontuacao], [status]) VALUES (6, 7, 7, CAST(0x76380B00 AS Date), CAST(0x07007A6043A50000 AS Time), 1, N'1')
INSERT [dbo].[Troca] ([id_user_de], [id_user_para], [id_livro], [data], [hora], [pontuacao], [status]) VALUES (8, 9, 9, CAST(0x76380B00 AS Date), CAST(0x07007A6043A50000 AS Time), 1, N'1')
INSERT [dbo].[Troca] ([id_user_de], [id_user_para], [id_livro], [data], [hora], [pontuacao], [status]) VALUES (9, 10, 10, CAST(0x76380B00 AS Date), CAST(0x07007A6043A50000 AS Time), 1, N'1')
INSERT [dbo].[Troca] ([id_user_de], [id_user_para], [id_livro], [data], [hora], [pontuacao], [status]) VALUES (10, 11, 11, CAST(0x76380B00 AS Date), CAST(0x07007A6043A50000 AS Time), 1, N'1')
INSERT [dbo].[Troca] ([id_user_de], [id_user_para], [id_livro], [data], [hora], [pontuacao], [status]) VALUES (11, 12, 12, CAST(0x76380B00 AS Date), CAST(0x07007A6043A50000 AS Time), 1, N'1')
INSERT [dbo].[Troca] ([id_user_de], [id_user_para], [id_livro], [data], [hora], [pontuacao], [status]) VALUES (12, 13, 13, CAST(0x76380B00 AS Date), CAST(0x07007A6043A50000 AS Time), 1, N'1')
INSERT [dbo].[Troca] ([id_user_de], [id_user_para], [id_livro], [data], [hora], [pontuacao], [status]) VALUES (13, 14, 14, CAST(0x76380B00 AS Date), CAST(0x07007A6043A50000 AS Time), 1, N'1')
INSERT [dbo].[Troca] ([id_user_de], [id_user_para], [id_livro], [data], [hora], [pontuacao], [status]) VALUES (14, 15, 15, CAST(0x76380B00 AS Date), CAST(0x07007A6043A50000 AS Time), 1, N'1')
INSERT [dbo].[Troca] ([id_user_de], [id_user_para], [id_livro], [data], [hora], [pontuacao], [status]) VALUES (15, 13, 16, CAST(0x76380B00 AS Date), CAST(0x07007A6043A50000 AS Time), 1, N'1')
/****** Object:  Table [dbo].[Contem]    Script Date: 04/29/2014 18:53:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Contem]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Contem](
	[id_pacote] [int] NOT NULL,
	[id_ebook] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_pacote] ASC,
	[id_ebook] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[Contem] ([id_pacote], [id_ebook]) VALUES (1, 2)
INSERT [dbo].[Contem] ([id_pacote], [id_ebook]) VALUES (1, 3)
INSERT [dbo].[Contem] ([id_pacote], [id_ebook]) VALUES (1, 4)
INSERT [dbo].[Contem] ([id_pacote], [id_ebook]) VALUES (1, 5)
INSERT [dbo].[Contem] ([id_pacote], [id_ebook]) VALUES (1, 6)
INSERT [dbo].[Contem] ([id_pacote], [id_ebook]) VALUES (2, 2)
INSERT [dbo].[Contem] ([id_pacote], [id_ebook]) VALUES (2, 7)
INSERT [dbo].[Contem] ([id_pacote], [id_ebook]) VALUES (2, 8)
INSERT [dbo].[Contem] ([id_pacote], [id_ebook]) VALUES (2, 9)
INSERT [dbo].[Contem] ([id_pacote], [id_ebook]) VALUES (2, 10)
INSERT [dbo].[Contem] ([id_pacote], [id_ebook]) VALUES (3, 3)
INSERT [dbo].[Contem] ([id_pacote], [id_ebook]) VALUES (3, 11)
INSERT [dbo].[Contem] ([id_pacote], [id_ebook]) VALUES (3, 12)
INSERT [dbo].[Contem] ([id_pacote], [id_ebook]) VALUES (3, 15)
INSERT [dbo].[Contem] ([id_pacote], [id_ebook]) VALUES (3, 16)
/****** Object:  StoredProcedure [dbo].[Relatorio_Prefencias]    Script Date: 04/29/2014 18:53:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Relatorio_Prefencias]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
---------------------------------------------------------------------------
-- Procedure para retornar a quantidade de pessoas que desejam cada gênero
---------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[Relatorio_Prefencias]
	AS
	BEGIN
	SELECT COUNT(*) AS ''Qtd'',
		genero AS ''Genero''
	FROM Livro L 
		INNER JOIN Marca M ON M.id_livro = L.id
	WHERE M.desejado = ''true''
	GROUP BY genero
	END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Relatorio_Faturamento]    Script Date: 04/29/2014 18:53:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Relatorio_Faturamento]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'---------------------------------------------------------------------------
--Procedure para o relatório de faturamento
---------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[Relatorio_Faturamento] 
@datainicial date,
@datafinal date
	AS
	BEGIN
	IF (@datafinal IS NOT NULL AND @datainicial IS NOT NULL)
		SELECT
		--Formata o número referente ao mês para o mês escrito
		CASE
			WHEN MONTH(Data) = 1
				THEN ''Janeiro''
			WHEN MONTH(Data) = 2 
				THEN ''Fevereiro''
			WHEN MONTH(Data) = 3
				THEN ''Março''
			WHEN MONTH(Data) = 4
				THEN ''Abril''
			WHEN MONTH(Data) = 5
				THEN ''Maio''
			WHEN MONTH(Data) = 6
				THEN ''Junho''
			WHEN MONTH(Data) = 7
				THEN ''Julho''
			WHEN MONTH(Data) = 8
				THEN ''Agosto''
			WHEN MONTH(Data) = 9
				THEN ''Setembro''
			WHEN MONTH(Data) = 10
				THEN ''Outubro''
			WHEN MONTH(Data) = 11
				THEN ''Novembro''
			WHEN MONTH(Data) = 12
				THEN ''Dezembro''
		END AS ''Mes'',
		Tipo,
		Soma
		FROM (
		--Une as consultas da tabela Venda
			SELECT SUM(valor) AS ''Soma'',
				''Venda'' AS ''Tipo'',
				data AS ''Data''
			FROM Venda
			WHERE data BETWEEN @datainicial AND @datafinal
			GROUP BY data
			--Com a tabela Assinatura
			UNION ALL
			SELECT SUM(valor) AS ''Soma'',
				''Assinatura'' AS ''Tipo'',
				data AS ''Data''
			FROM Assinatura
			WHERE data BETWEEN @datainicial AND @datafinal
			GROUP BY data
		) X
	ELSE
		SELECT ''Este relatório requer parâmetros'' AS ''Erro''
	END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Relatorio_Aquisicao]    Script Date: 04/29/2014 18:53:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Relatorio_Aquisicao]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
---------------------------------------------------------------------------
--Procedure para o relatório de aquisicao de livros
---------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[Relatorio_Aquisicao]
@datainicial date,
@datafinal date
	AS
	BEGIN
	IF (@datafinal IS NOT NULL AND @datainicial IS NOT NULL)
		SELECT
		--Formata o número referente ao mês para o mês escrito
		CASE
			WHEN MONTH(Data) = 1
				THEN ''Janeiro''
			WHEN MONTH(Data) = 2 
				THEN ''Fevereiro''
			WHEN MONTH(Data) = 3
				THEN ''Março''
			WHEN MONTH(Data) = 4
				THEN ''Abril''
			WHEN MONTH(Data) = 5
				THEN ''Maio''
			WHEN MONTH(Data) = 6
				THEN ''Junho''
			WHEN MONTH(Data) = 7
				THEN ''Julho''
			WHEN MONTH(Data) = 8
				THEN ''Agosto''
			WHEN MONTH(Data) = 9
				THEN ''Setembro''
			WHEN MONTH(Data) = 10
				THEN ''Outubro''
			WHEN MONTH(Data) = 11
				THEN ''Novembro''
			WHEN MONTH(Data) = 12
				THEN ''Dezembro''
		END AS ''Mes'',
		Tipo,
		Qtd
		FROM (
		--Une as consultas da tabela Venda
			SELECT COUNT(*) AS ''Qtd'',
				''Venda'' AS ''Tipo'',
			data AS ''Data''
			FROM Venda
			WHERE data BETWEEN @datainicial AND @datafinal
		GROUP BY data
			--Com a tabela Assinatura
			UNION ALL
			SELECT COUNT(*) AS ''Qtd'',
				''Assinatura'' AS ''Tipo'',
				data AS ''Data''
			FROM Assinatura
			WHERE data BETWEEN @datainicial AND @datafinal
			GROUP BY data
		) X
	ELSE
		SELECT ''Este relatório requer parâmetros'' AS ''Erro''
	END
' 
END
GO
/****** Object:  ForeignKey [FK__Telefone___id_us__6E01572D]    Script Date: 04/29/2014 18:53:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Telefone___id_us__6E01572D]') AND parent_object_id = OBJECT_ID(N'[dbo].[Telefone_U]'))
ALTER TABLE [dbo].[Telefone_U]  WITH CHECK ADD FOREIGN KEY([id_usuario])
REFERENCES [dbo].[Usuario] ([id])
GO
/****** Object:  ForeignKey [FK__Telefone___id_ed__6D0D32F4]    Script Date: 04/29/2014 18:53:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Telefone___id_ed__6D0D32F4]') AND parent_object_id = OBJECT_ID(N'[dbo].[Telefone_E]'))
ALTER TABLE [dbo].[Telefone_E]  WITH CHECK ADD FOREIGN KEY([id_editora])
REFERENCES [dbo].[Editora] ([id])
GO
/****** Object:  ForeignKey [FK__Email__id_editor__656C112C]    Script Date: 04/29/2014 18:53:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Email__id_editor__656C112C]') AND parent_object_id = OBJECT_ID(N'[dbo].[Email]'))
ALTER TABLE [dbo].[Email]  WITH CHECK ADD FOREIGN KEY([id_editora])
REFERENCES [dbo].[Editora] ([id])
GO
/****** Object:  ForeignKey [FK__Cartao__id_usuar__5AEE82B9]    Script Date: 04/29/2014 18:53:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Cartao__id_usuar__5AEE82B9]') AND parent_object_id = OBJECT_ID(N'[dbo].[Cartao]'))
ALTER TABLE [dbo].[Cartao]  WITH CHECK ADD FOREIGN KEY([id_usuario])
REFERENCES [dbo].[Usuario] ([id])
GO
/****** Object:  ForeignKey [FK__Conversa__id_use__628FA481]    Script Date: 04/29/2014 18:53:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Conversa__id_use__628FA481]') AND parent_object_id = OBJECT_ID(N'[dbo].[Conversa]'))
ALTER TABLE [dbo].[Conversa]  WITH CHECK ADD FOREIGN KEY([id_user_de])
REFERENCES [dbo].[Usuario] ([id])
GO
/****** Object:  ForeignKey [FK__Conversa__id_use__6383C8BA]    Script Date: 04/29/2014 18:53:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Conversa__id_use__6383C8BA]') AND parent_object_id = OBJECT_ID(N'[dbo].[Conversa]'))
ALTER TABLE [dbo].[Conversa]  WITH CHECK ADD FOREIGN KEY([id_user_para])
REFERENCES [dbo].[Usuario] ([id])
GO
/****** Object:  ForeignKey [FK__Contato__id_Cont__571DF1D5]    Script Date: 04/29/2014 18:53:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Contato__id_Cont__571DF1D5]') AND parent_object_id = OBJECT_ID(N'[dbo].[Contato]'))
ALTER TABLE [dbo].[Contato]  WITH CHECK ADD FOREIGN KEY([id_Contato])
REFERENCES [dbo].[Usuario] ([id])
GO
/****** Object:  ForeignKey [FK__Contato__id_usua__5812160E]    Script Date: 04/29/2014 18:53:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Contato__id_usua__5812160E]') AND parent_object_id = OBJECT_ID(N'[dbo].[Contato]'))
ALTER TABLE [dbo].[Contato]  WITH CHECK ADD FOREIGN KEY([id_usuario])
REFERENCES [dbo].[Usuario] ([id])
GO
/****** Object:  ForeignKey [FK__Conta__id_usuari__5FB337D6]    Script Date: 04/29/2014 18:53:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Conta__id_usuari__5FB337D6]') AND parent_object_id = OBJECT_ID(N'[dbo].[Conta]'))
ALTER TABLE [dbo].[Conta]  WITH CHECK ADD FOREIGN KEY([id_usuario])
REFERENCES [dbo].[Usuario] ([id])
GO
/****** Object:  ForeignKey [FK__Livro__id_autor__6754599E]    Script Date: 04/29/2014 18:53:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Livro__id_autor__6754599E]') AND parent_object_id = OBJECT_ID(N'[dbo].[Livro]'))
ALTER TABLE [dbo].[Livro]  WITH CHECK ADD FOREIGN KEY([id_autor])
REFERENCES [dbo].[Autor] ([id])
GO
/****** Object:  ForeignKey [FK__Livro__id_editor__68487DD7]    Script Date: 04/29/2014 18:53:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Livro__id_editor__68487DD7]') AND parent_object_id = OBJECT_ID(N'[dbo].[Livro]'))
ALTER TABLE [dbo].[Livro]  WITH CHECK ADD FOREIGN KEY([id_editora])
REFERENCES [dbo].[Editora] ([id])
GO
/****** Object:  ForeignKey [FK__Fisico__id_livro__66603565]    Script Date: 04/29/2014 18:53:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Fisico__id_livro__66603565]') AND parent_object_id = OBJECT_ID(N'[dbo].[Fisico]'))
ALTER TABLE [dbo].[Fisico]  WITH CHECK ADD FOREIGN KEY([id_livro])
REFERENCES [dbo].[Livro] ([id])
GO
/****** Object:  ForeignKey [FK__Marca__id_livro__693CA210]    Script Date: 04/29/2014 18:53:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Marca__id_livro__693CA210]') AND parent_object_id = OBJECT_ID(N'[dbo].[Marca]'))
ALTER TABLE [dbo].[Marca]  WITH CHECK ADD FOREIGN KEY([id_livro])
REFERENCES [dbo].[Livro] ([id])
GO
/****** Object:  ForeignKey [FK__Marca__id_usuari__6A30C649]    Script Date: 04/29/2014 18:53:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Marca__id_usuari__6A30C649]') AND parent_object_id = OBJECT_ID(N'[dbo].[Marca]'))
ALTER TABLE [dbo].[Marca]  WITH CHECK ADD FOREIGN KEY([id_usuario])
REFERENCES [dbo].[Usuario] ([id])
GO
/****** Object:  ForeignKey [FK__Comenta__id_livr__5BE2A6F2]    Script Date: 04/29/2014 18:53:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Comenta__id_livr__5BE2A6F2]') AND parent_object_id = OBJECT_ID(N'[dbo].[Comenta]'))
ALTER TABLE [dbo].[Comenta]  WITH CHECK ADD FOREIGN KEY([id_livro])
REFERENCES [dbo].[Livro] ([id])
GO
/****** Object:  ForeignKey [FK__Comenta__id_usua__5CD6CB2B]    Script Date: 04/29/2014 18:53:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Comenta__id_usua__5CD6CB2B]') AND parent_object_id = OBJECT_ID(N'[dbo].[Comenta]'))
ALTER TABLE [dbo].[Comenta]  WITH CHECK ADD FOREIGN KEY([id_usuario])
REFERENCES [dbo].[Usuario] ([id])
GO
/****** Object:  ForeignKey [FK__Assinatur__id_pa__59063A47]    Script Date: 04/29/2014 18:53:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Assinatur__id_pa__59063A47]') AND parent_object_id = OBJECT_ID(N'[dbo].[Assinatura]'))
ALTER TABLE [dbo].[Assinatura]  WITH CHECK ADD FOREIGN KEY([id_pacote])
REFERENCES [dbo].[Pacote] ([id])
GO
/****** Object:  ForeignKey [FK__Assinatur__id_us__59FA5E80]    Script Date: 04/29/2014 18:53:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Assinatur__id_us__59FA5E80]') AND parent_object_id = OBJECT_ID(N'[dbo].[Assinatura]'))
ALTER TABLE [dbo].[Assinatura]  WITH CHECK ADD FOREIGN KEY([id_usuario])
REFERENCES [dbo].[Usuario] ([id])
GO
/****** Object:  ForeignKey [FK__Digital__id_livr__6477ECF3]    Script Date: 04/29/2014 18:53:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Digital__id_livr__6477ECF3]') AND parent_object_id = OBJECT_ID(N'[dbo].[Digital]'))
ALTER TABLE [dbo].[Digital]  WITH CHECK ADD FOREIGN KEY([id_livro])
REFERENCES [dbo].[Livro] ([id])
GO
/****** Object:  ForeignKey [FK__Resenha__id_livr__6B24EA82]    Script Date: 04/29/2014 18:53:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Resenha__id_livr__6B24EA82]') AND parent_object_id = OBJECT_ID(N'[dbo].[Resenha]'))
ALTER TABLE [dbo].[Resenha]  WITH CHECK ADD FOREIGN KEY([id_livro])
REFERENCES [dbo].[Livro] ([id])
GO
/****** Object:  ForeignKey [FK__Resenha__id_usua__6C190EBB]    Script Date: 04/29/2014 18:53:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Resenha__id_usua__6C190EBB]') AND parent_object_id = OBJECT_ID(N'[dbo].[Resenha]'))
ALTER TABLE [dbo].[Resenha]  WITH CHECK ADD FOREIGN KEY([id_usuario])
REFERENCES [dbo].[Usuario] ([id])
GO
/****** Object:  ForeignKey [FK__Venda__id_ebook__5DCAEF64]    Script Date: 04/29/2014 18:53:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Venda__id_ebook__5DCAEF64]') AND parent_object_id = OBJECT_ID(N'[dbo].[Venda]'))
ALTER TABLE [dbo].[Venda]  WITH CHECK ADD FOREIGN KEY([id_ebook])
REFERENCES [dbo].[Digital] ([id_livro])
GO
/****** Object:  ForeignKey [FK__Venda__id_usuari__5EBF139D]    Script Date: 04/29/2014 18:53:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Venda__id_usuari__5EBF139D]') AND parent_object_id = OBJECT_ID(N'[dbo].[Venda]'))
ALTER TABLE [dbo].[Venda]  WITH CHECK ADD FOREIGN KEY([id_usuario])
REFERENCES [dbo].[Usuario] ([id])
GO
/****** Object:  ForeignKey [FK__Troca__id_livro__6EF57B66]    Script Date: 04/29/2014 18:53:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Troca__id_livro__6EF57B66]') AND parent_object_id = OBJECT_ID(N'[dbo].[Troca]'))
ALTER TABLE [dbo].[Troca]  WITH CHECK ADD FOREIGN KEY([id_livro])
REFERENCES [dbo].[Fisico] ([id_livro])
GO
/****** Object:  ForeignKey [FK__Troca__id_user_d__6FE99F9F]    Script Date: 04/29/2014 18:53:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Troca__id_user_d__6FE99F9F]') AND parent_object_id = OBJECT_ID(N'[dbo].[Troca]'))
ALTER TABLE [dbo].[Troca]  WITH CHECK ADD FOREIGN KEY([id_user_de])
REFERENCES [dbo].[Usuario] ([id])
GO
/****** Object:  ForeignKey [FK__Troca__id_user_p__70DDC3D8]    Script Date: 04/29/2014 18:53:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Troca__id_user_p__70DDC3D8]') AND parent_object_id = OBJECT_ID(N'[dbo].[Troca]'))
ALTER TABLE [dbo].[Troca]  WITH CHECK ADD FOREIGN KEY([id_user_para])
REFERENCES [dbo].[Usuario] ([id])
GO
/****** Object:  ForeignKey [FK__Contem__id_ebook__60A75C0F]    Script Date: 04/29/2014 18:53:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Contem__id_ebook__60A75C0F]') AND parent_object_id = OBJECT_ID(N'[dbo].[Contem]'))
ALTER TABLE [dbo].[Contem]  WITH CHECK ADD FOREIGN KEY([id_ebook])
REFERENCES [dbo].[Digital] ([id_livro])
GO
/****** Object:  ForeignKey [FK__Contem__id_pacot__619B8048]    Script Date: 04/29/2014 18:53:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Contem__id_pacot__619B8048]') AND parent_object_id = OBJECT_ID(N'[dbo].[Contem]'))
ALTER TABLE [dbo].[Contem]  WITH CHECK ADD FOREIGN KEY([id_pacote])
REFERENCES [dbo].[Pacote] ([id])
GO
