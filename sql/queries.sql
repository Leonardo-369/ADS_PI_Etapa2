-- INSERIR UMA PESSOA FÍSICA (Aluno)
INSERT INTO Pessoa (nome,endereco,telefone,email)
VALUES ('Maria Silva','Rua A, 123','1199999-9999','maria@email.com');

INSERT INTO PessoaFisica (idPessoa,cpf,dataNascimento)
VALUES (1,'111.222.333-44','2000-05-10');

INSERT INTO Aluno (idPessoa,matricula,curso,turma)
VALUES (1,'2025001','ADS','Turma A');


-- INSERIR PESSOA FÍSICA (Professor)
INSERT INTO Pessoa (nome,endereco,telefone,email)
VALUES ('Carlos Santos','Rua B, 500','1188888-8888','prof.carlos@email.com');

INSERT INTO PessoaFisica (idPessoa,cpf,dataNascimento)
VALUES (2,'555.666.777-88','1985-09-12');

INSERT INTO Professor (idPessoa,formacao,areaAtuacao,vinculoCurso)
VALUES (2,'Engenharia da Computação','Cloud','ADS');


-- INSERIR ORIENTAÇÃO
INSERT INTO Orientacao (idProfessor,idAluno)
VALUES (2,1);


-- CONSULTAR todos os alunos e seus orientadores
SELECT a.matricula, pAluno.nome AS aluno, pProf.nome AS professor
FROM Orientacao o
JOIN Aluno a ON o.idAluno = a.idPessoa
JOIN Pessoa pAluno ON pAluno.idPessoa = a.idPessoa
JOIN Professor pr ON pr.idPessoa = o.idProfessor
JOIN Pessoa pProf ON pProf.idPessoa = pr.idPessoa;


-- CONSULTAR fornecedores e seus contratos
SELECT p.nome AS fornecedor, c.descricao, c.valor
FROM Fornecedor f
JOIN PessoaJuridica pj ON f.idPessoa = pj.idPessoa
JOIN Pessoa p ON p.idPessoa = pj.idPessoa
LEFT JOIN Contrato c ON c.idFornecedor = f.idPessoa;
