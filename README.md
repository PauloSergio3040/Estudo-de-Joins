Estudo de JOINs (INNER, LEFT e RIGHT) — MySQL 5.7

Este projeto consiste em um estudo prático sobre os principais tipos de JOIN em SQL: INNER JOIN, LEFT JOIN e RIGHT JOIN.

O objetivo é compreender, na prática, como cada tipo de junção se comporta ao relacionar tabelas com e sem correspondência entre registros.

O estudo foi realizado utilizando MySQL 5.7 e inclui exemplos com base própria criada para testes e também consultas aplicadas ao banco de dados sakila.

📚 Objetivos do Estudo

Entender o funcionamento de JOINs em bancos relacionais

Analisar a diferença entre INNER, LEFT e RIGHT JOIN

Trabalhar com chaves primárias e estrangeiras

Aplicar integridade referencial na prática

Consolidar fundamentos de modelagem relacional

🗄️ Estrutura do Projeto

O projeto contém:

1️⃣ Base própria para estudo

Foram criadas três tabelas:

alunos

disciplina

matricula (tabela associativa com chave primária composta)

A modelagem inclui:

Chaves primárias auto_increment

Chaves estrangeiras

Relacionamento N:N resolvido por tabela intermediária

Casos propositalmente criados para demonstrar ausência de correspondência (aluno sem matrícula e disciplina sem alunos)

2️⃣ Exemplos com banco sakila

Consultas adicionais utilizando o banco de dados de exemplo sakila, aplicando JOINs nas tabelas:

actor

film_actor

film

🔎 Tipos de JOIN Demonstrados

INNER JOIN → Retorna apenas registros com correspondência em ambas as tabelas

LEFT JOIN → Retorna todos os registros da tabela à esquerda, mesmo sem correspondência

RIGHT JOIN → Retorna todos os registros da tabela à direita, mesmo sem correspondência

🛠️ Tecnologias Utilizadas

MySQL 5.7

SQL

📎 Documentação Oficial

Referência utilizada para reforço conceitual:

👉 [Adicionar link da documentação oficial aqui]

📌 Observações

Este repositório tem caráter educacional e foi desenvolvido como parte do processo de consolidação de fundamentos em banco de dados relacional, com foco em clareza estrutural, integridade referencial e comportamento de consultas SQL.

Isso aqui mostra domínio de:

Modelagem relacional

Relacionamento N:N

Chave composta

Integridade referencial

Compreensão real de JOIN
