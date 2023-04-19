CREATE TABLE Ator (
  cpf VARCHAR2(11) PRIMARY KEY,
  nome VARCHAR2(100) NOT NULL,
  data_nascimento DATE NOT NULL
);

CREATE TABLE Produtor (
  email VARCHAR2(100) PRIMARY KEY,
  nome VARCHAR2(100) NOT NULL,
  chefe VARCHAR2(100),
  tel_1 VARCHAR2(20) NOT NULL,
  tel_2 VARCHAR2(20),
  FOREIGN KEY (chefe) REFERENCES Produtor(email)
);

CREATE TABLE Contrata (
  email VARCHAR2(100),
  cpf VARCHAR2(11),
  PRIMARY KEY (email, cpf),
  FOREIGN KEY (email) REFERENCES Produtor(email),
  FOREIGN KEY (cpf) REFERENCES Ator(cpf)
);

CREATE TABLE Prod_Audiovisual (
  cod_prod INT PRIMARY KEY,
  avaliacao FLOAT NOT NULL,
  nome VARCHAR2(100) NOT NULL
);

CREATE TABLE Premio (
  cod_premio INT PRIMARY KEY,
  nome VARCHAR2(100) NOT NULL,
  instituicao VARCHAR2(100) NOT NULL
);

CREATE TABLE Atua (
  cpf VARCHAR2(11),
  cod_prod INT,
  tipo_personagem VARCHAR2(100) NOT NULL,
  cod_premio INT,
  PRIMARY KEY (cpf, cod_prod),
  FOREIGN KEY (cpf) REFERENCES Ator(cpf),
  FOREIGN KEY (cod_prod) REFERENCES Prod_Audiovisual(cod_prod),
  FOREIGN KEY (cod_premio) REFERENCES Premio(cod_premio)
);

CREATE TABLE Serie (
  cod_prod INT PRIMARY KEY,
  qtd_temporadas INT NOT NULL,
  FOREIGN KEY (cod_prod) REFERENCES Prod_Audiovisual(cod_prod)
);

CREATE TABLE Filme (
  cod_prod INT PRIMARY KEY,
  bilheteria FLOAT NOT NULL,
  FOREIGN KEY (cod_prod) REFERENCES Prod_Audiovisual(cod_prod)
);

CREATE TABLE Contrato (
  cod_prod INT,
  data DATE NOT NULL,
  orcamento FLOAT NOT NULL,
  PRIMARY KEY (cod_prod, data),
  FOREIGN KEY (cod_prod) REFERENCES Prod_Audiovisual(cod_prod)
);

CREATE TABLE Equipamento (
  cod_equip INT PRIMARY KEY,
  custo FLOAT NOT NULL,
  tipo VARCHAR2(100) NOT NULL
);

CREATE TABLE Estudio (
  cod_estudio INT PRIMARY KEY,
  nome VARCHAR2(100) NOT NULL,
  cep VARCHAR2(8),
  logradouro VARCHAR2(100),
  numero VARCHAR2(20)
);

CREATE TABLE Aluga (
  cod_prod INT,
  cod_estudio INT,
  cod_equip INT,
  PRIMARY KEY (cod_prod, cod_estudio, cod_equip),
  FOREIGN KEY (cod_prod) REFERENCES Prod_Audiovisual(cod_prod),
  FOREIGN KEY (cod_estudio) REFERENCES Estudio(cod_estudio),
  FOREIGN KEY (cod_equip) REFERENCES Equipamento(cod_equip)
);

