CREATE VIEW relatorio_geral_curso AS
SELECT
    al.nome_aluno AS nome,
    c.nome_curso AS curso,
    cat.nome_categoria AS categoria,
    mt.data_matricula AS data_matricula,
    SUM(p.valor_pago) AS valor_pago,
    ROUND(AVG(a.nota), 1) AS média,
    IF(p.valor_pago IS NULL, 'Pendente', 'Pago') AS status_pagamento
FROM 
    curso c
LEFT JOIN 
    categoria cat ON c.id_categoria = cat.id
LEFT JOIN 
    matricula mt ON mt.id_curso = c.id
LEFT JOIN   
    aluno al ON mt.id_aluno = al.id
LEFT JOIN 
    pagamento p ON p.id_matricula = mt.id
LEFT JOIN
    avaliacao a ON a.id_matricula = mt.id
GROUP BY
    al.nome_aluno, c.nome_curso, cat.nome_categoria, mt.data_matricula, a.nota, status_pagamento;



CREATE VIEW status_avaliacao AS 
SELECT
    al.nome_aluno,
    c.nome_curso,
    a.nota,
    a.comentario,
    CASE 
        WHEN a.nota IN (1,2) THEN 'Ruím' 
        WHEN a.nota = 3  THEN 'Médio' 
        WHEN a.nota = 4 THEN 'Bom' 
        WHEN a.nota = 5 THEN 'Excelente' 
        ELSE 'Sem avaliação'
    END AS status_avaliacao
FROM avaliacao a
JOIN
    matricula m ON a.id_matricula = m.id
JOIN
    curso c ON m.id_curso = c.id
JOIN 
    aluno al ON m.id_aluno = al.id 




CREATE VIEW total_alunos_por_curso AS
SELECT
    c.nome_curso,
    COUNT(DISTINCT m.id_aluno) AS total_alunos
FROM curso c
JOIN
    matricula m ON m.id_curso = c.id
GROUP BY 
    c.nome_curso;





CREATE VIEW relatorio_financeiro_curso AS
SELECT
    c.nome_curso,
    CONCAT('R$', SUM(valor_pago)) AS valor_total
FROM pagamento p
JOIN
    matricula m ON p.id_matricula = m.id
JOIN
    curso c ON m.id_curso = c.id
GROUP BY
    c.nome_curso;




CREATE VIEW relatorio_pagamento_pendentes AS
SELECT
    m.id AS id_matricula,
    al.nome_aluno,
    c.nome_curso,
    m.data_matricula,
    c.preco
from 
    matricula m
JOIN 
    aluno al ON m.id_aluno = al.id
JOIN
    curso c ON m.id_curso = c.id
LEFT JOIN 
    pagamento p ON p.id_matricula = m.id
WHERE  
    p.id IS NULL;




CREATE VIEW avaliacoes_detalhadas AS
SELECT
    m.id AS id_matricula,
    al.nome_aluno,
    c.nome_curso, 
    a.nota,
    a.comentario
FROM aluno al
JOIN
    matricula m ON m.id_aluno = al.id
JOIN 
    curso c ON m.id_curso = c.id
JOIN 
    avaliacao a ON  a.id_matricula = m.id


-- SELECT * FROM relatorio_geral_curso;
-- SELECT * FROM status_avaliacao;
-- SELECT * FROM total_alunos_por_curso;
-- SELECT * FROM relatorio_financeiro_curso;
-- SELECT * FROM relatorio_pagamento_pendentes;
-- SELECT * FROM avaliacoes_detalhadas;
