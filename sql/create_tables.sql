CREATE TABLE Pessoa (
    idPessoa INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(200),
    telefone VARCHAR(50),
    email VARCHAR(100)
);

CREATE TABLE PessoaFisica (
    idPessoa INT PRIMARY KEY,
    cpf VARCHAR(14) NOT NULL UNIQUE,
    dataNascimento DATE,
    FOREIGN KEY (idPessoa) REFERENCES Pessoa(idPessoa)
);

CREATE TABLE PessoaJuridica (
    idPessoa INT PRIMARY KEY,
    cnpj VARCHAR(18) NOT NULL UNIQUE,
    responsavelLegal VARCHAR(100),
    FOREIGN KEY (idPessoa) REFERENCES Pessoa(idPessoa)
);

CREATE TABLE Aluno (
    idPessoa INT PRIMARY KEY,
    matricula VARCHAR(50) UNIQUE,
    curso VARCHAR(100),
    turma VARCHAR(50),
    FOREIGN KEY (idPessoa) REFERENCES PessoaFisica(idPessoa)
);

CREATE TABLE Professor (
    idPessoa INT PRIMARY KEY,
    formacao VARCHAR(150),
    areaAtuacao VARCHAR(150),
    vinculoCurso VARCHAR(150),
    FOREIGN KEY (idPessoa) REFERENCES PessoaFisica(idPessoa)
);

CREATE TABLE Orientacao (
    idOrientacao INT AUTO_INCREMENT PRIMARY KEY,
    idProfessor INT NOT NULL,
    idAluno INT NOT NULL,
    FOREIGN KEY (idProfessor) REFERENCES Professor(idPessoa),
    FOREIGN KEY (idAluno) REFERENCES Aluno(idPessoa)
);

CREATE TABLE Fornecedor (
    idPessoa INT PRIMARY KEY,
    areaFornecimento VARCHAR(150),
    contatos VARCHAR(200),
    FOREIGN KEY (idPessoa) REFERENCES PessoaJuridica(idPessoa)
);

CREATE TABLE Contrato (
    idContrato INT AUTO_INCREMENT PRIMARY KEY,
    descricao TEXT,
    valor DECIMAL(10,2),
    dataContrato DATE,
    idFornecedor INT,
    FOREIGN KEY (idFornecedor) REFERENCES Fornecedor(idPessoa)
);
