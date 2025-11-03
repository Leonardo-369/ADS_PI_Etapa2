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

Professor Orientador: **Anderson Clayton Garcia Lopes**

---

## 📘 Descrição do Projeto

Este repositório contém o **Sistema de Gestão Universitária**, desenvolvido como parte do **Projeto Integrador da disciplina Desenvolvimento de Sistemas Orientado a Objetos**.  

O sistema tem como objetivo **centralizar e gerenciar informações de alunos, professores e fornecedores** de uma instituição de ensino, garantindo integridade, segurança e eficiência nos cadastros.

A modelagem do sistema segue os princípios da **engenharia de software orientada a objetos**, com base em autores como Booch, Rumbaugh e Jacobson (2005) e Sommerville (2011).

---

## 🧩 Funcionalidades Principais

### 1. Cadastro de Pessoa Física
- Campos obrigatórios: nome, CPF, data de nascimento, endereço, telefone e e-mail.  
- Validação automática de CPF, duplicidade e campos obrigatórios.

### 2. Cadastro de Pessoa Jurídica
- Campos: razão social, CNPJ, endereço, telefone e responsável legal.  
- Validação de CNPJ e verificação de duplicidade.  

### 3. Cadastro de Aluno
- Inclui automaticamente o caso de uso **Cadastro de Pessoa Física**.  
- Campos adicionais: matrícula, curso e turma.  
- Validação de matrícula e curso ativo.  

### 4. Cadastro de Professor
- Inclui automaticamente o caso de uso **Cadastro de Pessoa Física**.  
- Campos adicionais: formação, área de atuação e vínculo com cursos.  
- Verificação de duplicidade e consistência acadêmica.  

### 5. Cadastro de Fornecedor
- Inclui automaticamente o caso de uso **Cadastro de Pessoa Jurídica**.  
- Campos adicionais: área de fornecimento e contatos.  
- Validação de CNPJ e controle de duplicidade.  

---

## 🧠 Modelagem UML

O projeto é baseado em **diagramas UML**, incluindo:

- **Diagrama de Casos de Uso** – detalha as interações entre os atores (Aluno, Professor, Fornecedor) e o sistema.  
- **Diagrama de Classes** – descreve a estrutura orientada a objetos, relacionando entidades e seus atributos.  

---

## ⚙️ Tecnologias Recomendadas

- **Linguagem:** Java / C# / Python (conforme orientação do docente)  
- **IDE:** Visual Studio Code, IntelliJ IDEA ou Visual Studio  
- **Banco de Dados:** MySQL ou PostgreSQL  
- **Ferramenta de Modelagem:** StarUML, Lucidchart ou draw.io  

---

## 🚀 Instruções de Uso

1. Clone este repositório:
   ```bash
   git clone https://github.com/<usuario>/<nome-do-repositorio>.git
   ```
2. Abra o projeto na sua IDE preferida.  
3. Configure a conexão com o banco de dados no arquivo de configuração.  
4. Execute o projeto e acesse os módulos de cadastro disponíveis.  

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
