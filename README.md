# 🏫 Sistema de Gestão Universitária
**Projeto Integrador – Desenvolvimento de Sistemas Orientado a Objetos**  
Curso: Tecnologia em Análise e Desenvolvimento de Sistemas – SENAC (EAD, 2025)

---

## 👥 Integrantes
- Caio Romano Galeffi  
- Gabriela Rodrigues Guimarães  
- Larissa Soares Conceição  
- Leonardo Freire de Albuquerque Mello  
- Leonardo Soares dos Santos da Costa  
- Roger Alves da Silva  
- Thamires Anjos Ferreira  

Professor orientador: **Anderson Clayton Garcia Lopes**

---

## 📘 Descrição do Projeto

Este repositório contém o **Sistema de Gestão Universitária**, desenvolvido como parte do **Projeto Integrador da disciplina Desenvolvimento de Sistemas Orientado a Objetos**.  

O sistema tem como objetivo **centralizar e gerenciar informações de alunos, professores e fornecedores**, garantindo integridade, segurança e eficiência nos cadastros.  

A modelagem do sistema segue os princípios da **engenharia de software orientada a objetos**, com base em autores como Booch, Rumbaugh e Jacobson (2005) e Sommerville (2011).

---

## 🧩 Funcionalidades Principais

- **Cadastro de Pessoa Física e Jurídica**
- **Cadastro de Aluno e Professor**
- **Vinculação de Orientações Acadêmicas**
- **Cadastro de Fornecedores e Contratos**
- **Consultas integradas de alunos, professores e fornecedores**

---

## 🧠 Modelagem UML

O sistema é modelado com **diagramas UML**, incluindo:
- **Casos de Uso**: Aluno, Professor e Fornecedor interagem com o sistema.  
- **Classes**: Estrutura orientada a objetos representando entidades e relacionamentos.

---

## ⚙️ Tecnologias Recomendadas

- **Linguagem:** Java / C# / Python (conforme orientação docente)  
- **Banco de Dados:** MySQL ou MariaDB  
- **Ferramenta de Modelagem:** StarUML, Lucidchart ou draw.io  
- **IDE:** Visual Studio Code, IntelliJ IDEA ou Visual Studio  

---

## 🗄️ Uso do Banco de Dados (Scripts SQL)

O repositório inclui dois scripts SQL fundamentais:

### 1. `create_tables.sql`
Cria toda a estrutura do banco de dados do sistema:

- **Tabelas principais:**  
  `Pessoa`, `PessoaFisica`, `PessoaJuridica`, `Aluno`, `Professor`, `Fornecedor`, `Contrato`, `Orientacao`.

- **Relacionamentos:**  
  Cada tabela utiliza **chaves estrangeiras** para garantir integridade referencial entre pessoas, alunos, professores e fornecedores.

🧱 **Execução:**
```sql
SOURCE create_tables.sql;
```

---

### 2. `queries.sql`
Contém exemplos práticos de **inserções e consultas SQL** para testar o sistema:

- **Inserção de registros:**  
  - Pessoa Física (Aluno e Professor)  
  - Relação de Orientação (Professor ↔ Aluno)

- **Consultas principais:**  
  - Listar alunos e seus respectivos orientadores  
  - Listar fornecedores e seus contratos vinculados  

🧩 **Execução:**
```sql
SOURCE queries.sql;
```

---

## 🚀 Instruções de Uso

1. Clone este repositório:
   ```bash
   git clone https://github.com/Leonardo-369/ADS_PI_Etapa2.git
   ```
2. Crie o banco de dados no MySQL:
   ```sql
   CREATE DATABASE gestao_universitaria;
   USE gestao_universitaria;
   ```
3. Execute o script de criação de tabelas:
   ```sql
   SOURCE create_tables.sql;
   ```
4. Popule o banco e teste as consultas:
   ```sql
   SOURCE queries.sql;
   ```

---

## 🧾 Referências Bibliográficas

- BOOCH, G.; RUMBAUGH, J.; JACOBSON, I. *The Unified Modeling Language User Guide*. 2ª ed. Boston: Addison-Wesley, 2005.  
- PRESSMAN, R. S. *Engenharia de software: uma abordagem profissional*. 8ª ed. Porto Alegre: McGraw-Hill, 2016.  
- SOMMERVILLE, I. *Engenharia de software*. 9ª ed. São Paulo: Pearson, 2011.  
- ALMEIDA, M. E. B. *Sistemas de Informação: Gestão e Estratégia*. São Paulo: Atlas, 2020.  
- SILVA, R. R.; GARCIA, V. R. *Modelagem de processos e sistemas com UML: conceitos e aplicações*. *Revista de Tecnologia e Inovação*, v. 12, n. 2, p. 45–59, 2019.  

---

## 📄 Licença

Este projeto é de uso educacional e está licenciado sob a **MIT License**.  
Sinta-se livre para clonar, estudar e evoluir o código conforme as boas práticas de desenvolvimento orientado a objetos.
