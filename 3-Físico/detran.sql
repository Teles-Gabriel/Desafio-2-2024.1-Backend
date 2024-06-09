CREATE TABLE Proprietario (
    cpf VARCHAR(11) PRIMARY KEY,
    nome VARCHAR(100),
    endereco VARCHAR(200),
    bairro VARCHAR(50),
    cidade VARCHAR(50),
    estado VARCHAR(2),
    telefones VARCHAR(50),
    sexo CHAR(1),
    data_nascimento DATE,
    idade INT
);

CREATE TABLE Modelo (
    id_modelo INT PRIMARY KEY,
    descricao VARCHAR(50)
);

CREATE TABLE Categoria (
    id_categoria INT PRIMARY KEY,
    descricao VARCHAR(50)
);

CREATE TABLE Veiculo (
    placa VARCHAR(10) PRIMARY KEY,
    chassi VARCHAR(17),
    cor VARCHAR(20),
    id_modelo INT REFERENCES Modelo(id_modelo),
    id_categoria INT REFERENCES Categoria(id_categoria),
    ano_fabricacao INT,
    cpf_proprietario VARCHAR(11) REFERENCES Proprietario(cpf)
);

CREATE TABLE TipoInfracao (
    id_tipo_infracao INT PRIMARY KEY,
    descricao VARCHAR(50),
    valor DECIMAL(10,2)
);

CREATE TABLE Local (
    latitude DECIMAL(9,6),
    longitude DECIMAL(9,6),
    velocidade_permitida DECIMAL(5,2),
    PRIMARY KEY(latitude, longitude)
);

CREATE TABLE AgenteTransito (
    matricula INT PRIMARY KEY,
    nome VARCHAR(100),
    data_contratacao DATE,
    tempo_servico INT
);

CREATE TABLE Infracao (
    id_infracao INT PRIMARY KEY,
    placa VARCHAR(10) REFERENCES Veiculo(placa),
    data_hora TIMESTAMP,
    id_tipo_infracao INT REFERENCES TipoInfracao(id_tipo_infracao),
    latitude DECIMAL(9,6),
    longitude DECIMAL(9,6),
    velocidade_aferida DECIMAL(5,2),
    matricula_agente INT REFERENCES AgenteTransito(matricula)
);
