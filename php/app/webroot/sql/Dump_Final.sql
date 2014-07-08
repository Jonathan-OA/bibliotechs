-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Editora (
id smallint PRIMARY KEY AUTO_INCREMENT,
nome varchar (50) NOT NULL,
cnpj varchar(18) NOT NULL UNIQUE,
logradouro varchar(50) NOT NULL,
numero smallint NOT NULL,
bairro varchar(25) NOT NULL,
cidade varchar(30) NOT NULL,
estado varchar(2) NOT NULL,
pais varchar(30) NOT NULL
);

CREATE TABLE Email (
id_editora int NOT NULL,
email varchar(50) NOT NULL,
PRIMARY KEY (id_editora,email),
FOREIGN KEY (id_editora) REFERENCES Editora(id)
);

CREATE TABLE Telefone_E (
id_editora int NOT NULL,
telefone varchar(15) NOT NULL,
PRIMARY KEY (id_editora,telefone),
FOREIGN KEY (id_editora) REFERENCES Editora(id)
)


CREATE TABLE Autor (
id smallint AUTO_INCREMENT PRIMARY KEY,
nome varchar(50) NOT NULL,
data_nascimento date,
cidade varchar(30),
pais varchar(30),


)

CREATE TABLE Fisico (
id_livro int PRIMARY KEY,
material varchar(20),
peso varchar(6),
altura varchar(6),
largura varchar(6),
preco_medio numeric(4,2),
FOREIGN KEY(id_livro) REFERENCES Livro(id)
)

CREATE TABLE Digital (
id_livro int PRIMARY KEY,
codigo varchar(13) UNIQUE ,
tamanho varchar(5) NOT NULL,
formato varchar(4) NOT NULL,
preco_normal numeric(4,2) NOT NULL,
preco_asn numeric(4,2) NOT NULL,
caminho varchar(40) NOT NULL,
disponivel bit NOT NULL,
FOREIGN KEY(id_livro) REFERENCES Livro(id)
)

CREATE TABLE Livro (
id int AUTO_INCREMENT PRIMARY KEY,
titulo varchar(40) NOT NULL,
genero varchar(15),
sinopse text,
edicao varchar(10),
ano varchar(4),
capa varchar(40),
paginas smallint,
id_autor int,
id_editora int,
FOREIGN KEY(id_autor) REFERENCES Autor (id),
FOREIGN KEY(id_editora) REFERENCES Editora (id)
)

CREATE TABLE Pacote (
id int AUTO_INCREMENT PRIMARY KEY,
tipo varchar(11) NOT NULL
)




CREATE TABLE Usuario (
id int AUTO_INCREMENT PRIMARY KEY,
nome varchar(50), 
sexo varchar(1),
data_nascimento date,
logradouro varchar(50) NOT NULL,
numero smallint NOT NULL,
bairro varchar(25) NOT NULL,
cidade varchar(30) NOT NULL,
estado varchar(2) NOT NULL,
pais varchar(30) NOT NULL,
foto varchar(40)
)


CREATE TABLE Conta (
id_usuario int NOT NULL,
login varchar(15) PRIMARY KEY,
email varchar(50) NOT NULL UNIQUE,
senha varchar(15) NOT NULL,
data_cadastro date NOT NULL,
pont_total int NOT NULL,
FOREIGN KEY (id_usuario) REFERENCES Usuario(id)
)


CREATE TABLE Telefone_U (
id_usuario int NOT NULL,
telefone varchar(15) NOT NULL,
PRIMARY KEY (id_usuario,telefone),
FOREIGN KEY (id_usuario) REFERENCES Usuario(id)
)


CREATE TABLE Cartao (
id_usuario int NOT NULL,
bandeira varchar(10) NOT NULL,
numero varchar(20) NOT NULL,
validade varchar(7) NOT NULL,
PRIMARY KEY (id_usuario,numero),
FOREIGN KEY (id_usuario) REFERENCES Usuario(id)

)

CREATE TABLE Conversa (
id_user_de int NOT NULL,
id_user_para int NOT NULL,
mensagem text NOT NULL,
data date NOT NULL,
hora time NOT NULL,
PRIMARY KEY (id_user_de, id_user_para, data, hora),
FOREIGN KEY (id_user_de) REFERENCES Usuario(id),
FOREIGN KEY (id_user_para) REFERENCES Usuario(id)
)

CREATE TABLE Amigo (
id_usuario int NOT NULL,
id_amigo int NOT NULL,
PRIMARY KEY (id_usuario, id_amigo),
FOREIGN KEY (id_usuario) REFERENCES Usuario(id),
FOREIGN KEY (id_amigo) REFERENCES Usuario(id)
)

CREATE TABLE Troca (
id_user_de int NOT NULL,
id_user_para int NOT NULL,
id_livro int NOT NULL,
data date NOT NULL,
hora time NOT NULL,
pontuacao smallint,
status  varchar(20),
PRIMARY KEY (id_user_de, id_user_para, data, hora),
FOREIGN KEY (id_user_de) REFERENCES Usuario(id),
FOREIGN KEY (id_user_para) REFERENCES Usuario(id),
FOREIGN KEY (id_livro) REFERENCES Fisico(id)
)

CREATE TABLE Contem (
id_pacote int NOT NULL,
id_ebook int NOT NULL,
PRIMARY KEY (id_pacote, id_ebook),
FOREIGN KEY(id_pacote) REFERENCES Pacote(id),
FOREIGN KEY(id_ebook) REFERENCES Digital(id)
)

CREATE TABLE Assinatura (
id int AUTO_INCREMENT PRIMARY KEY,
id_usuario int NOT NULL,
id_pacote int NOT NULL,
valor numeric(4,2) NOT NULL,
data date NOT NULL,
hora time NOT NULL,
validade date NOT NULL,
pontuacao smallint,
FOREIGN KEY(id_pacote) REFERENCES Pacote (id),
FOREIGN KEY(id_usuario) REFERENCES Usuário (id)
)

CREATE TABLE Compra (
id_usuario int NOT NULL,
id_ebook int NOT NULL,
valor numeric(4,2) NOT NULL,
data date NOT NULL,
hora time NOT NULL,
pontuacao varchar(20),
PRIMARY KEY (id_usuario, id_ebook, data, hora),
FOREIGN KEY(id_usuario) REFERENCES Usuário (id),
FOREIGN KEY(id_ebook) REFERENCES Digital(id)
)

CREATE TABLE Marca (
id_usuario int NOT NULL,
id_livro int NOT NULL,
classificacao varchar(5) NOT NULL,
PRIMARY KEY (id_usuario, id_livro, classificacao),
FOREIGN KEY(id_usuario) REFERENCES Usuário(id),
FOREIGN KEY(id_livro) REFERENCES Livro(id)
)

CREATE TABLE Comenta (
id_usuario int NOT NULL,
id_livro int NOT NULL,
mensagem text NOT NULL,
data date NOT NULL,
hora time NOT NULL,
PRIMARY KEY (id_usuario, id_livro, data, hora),
FOREIGN KEY(id_usuario) REFERENCES Usuário(id),
FOREIGN KEY(id_livro) REFERENCES Livro(id)
)

CREATE TABLE Resenha (
id_usuario int NOT NULL,
id_livro int NOT NULL,
mensagem text NOT NULL,
data date NOT NULL,
hora time NOT NULL,
ativo bit NOT NULL,
PRIMARY KEY (id_usuario, id_livro),
FOREIGN KEY(id_usuario) REFERENCES Usuário(id),
FOREIGN KEY(id_livro) REFERENCES Livro(id)
)