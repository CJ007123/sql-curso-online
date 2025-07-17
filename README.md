# 📊 Plataforma de Cursos Online — Projeto SQL Completo

Este projeto simula o banco de dados de uma **plataforma de cursos online**, com foco em boas práticas de modelagem, uso de *JOINs*, *views*, *agrupamentos*, e relacionamentos entre tabelas.

---

## 🚀 Funcionalidades

- Cadastro de cursos, alunos, matrículas, pagamentos e avaliações.
- Relatórios complexos usando `VIEW` com `JOIN`, `GROUP BY`, `SUM`, `AVG`, `CASE` e `IFNULL`.
- Controle de pagamentos e identificação de pendências.
- Relatório financeiro total formatado.
- Avaliação de cursos com status qualitativo.

---

## 🧱 Modelagem do Banco

### Tabelas criadas:

- `categoria` – Categorias dos cursos (Ex: Programação, Design).
- `curso` – Cursos com nome, carga horária e preço.
- `aluno` – Informações dos alunos.
- `matricula` – Relação entre alunos e cursos.
- `pagamento` – Registro de pagamentos realizados.
- `avaliacao` – Notas e comentários dos cursos.

---

## 📊 Relatórios Criados (`VIEWs`)

- `relatorio_curso`: mostra curso, aluno, categoria, data de matrícula, valor pago, média da avaliação, quantidade de alunos e status do pagamento.
- `status_avaliacao`: classifica as avaliações como "Ruim", "Médio", "Bom" ou "Excelente" com base na nota.
- `relatorio_financeiro`: exibe o valor total arrecadado em formato de moeda.
- `relatorio_financeiro_por_curso`: total arrecadado por curso.
- `relatorio_pagamento_pendentes`: lista de matrículas que ainda não foram pagas.
- `avaliacoes_detalhadas`: mostra os comentários e notas dados pelos alunos.

---

## 🛠️ Tecnologias Utilizadas
- MySQL (Workbench ou extensão no VS Code)

- SQL puro (DDL, DML, JOINs, VIEWS, funções agregadas, etc.)

- Ferramentas de apoio: DATABASE Client


📌 Como Executar
1.Copie todo o script SQL do projeto.

2.Execute em um ambiente MySQL (Workbench, VS Code ou MySQL Server).

3.As views já estão prontas — basta consultar com SELECT * FROM nome_da_view.


##Autor
Cauan
Estudante de Análise e Desenvolvimento de Sistemas.
Linkedin: https://www.linkedin.com/in/cauan-da-paz-justino-9306b9350/
