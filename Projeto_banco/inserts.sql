INSERT INTO categoria (nome_categoria) VALUES
('Programação'),
('Design'),
('Negócios');


INSERT INTO curso (nome_curso, carga_horaria, preco, id_categoria) VALUES
('Python Básico', 40, 150.00, 1),
('HTML & CSS', 30, 100.00, 1),
('UX Design', 25, 130.00, 2),
('Figma para Iniciantes', 20, 90.00, 2),
('Marketing Digital', 35, 120.00, 3),
('Gestão de Projetos', 45, 200.00, 3);


INSERT INTO aluno (nome_aluno, email) VALUES
('Cauan', 'cauan@email.com'),
('Ana', 'ana@email.com'),
('Bruno', 'bruno@email.com'),
('Julia', 'julia@email.com'),
('Carlos', 'carlos@email.com');


INSERT INTO matricula (id_aluno, id_curso, data_matricula) VALUES
(1, 1, '2025-07-01'), -- Cauan → Python Básico
(2, 2, '2025-07-02'), -- Ana → HTML & CSS
(3, 3, '2025-07-03'), -- Bruno → UX Design
(4, 4, '2025-07-04'), -- Julia → Figma
(5, 5, '2025-07-05'), -- Carlos → Marketing
(1, 6, '2025-07-06'), -- Cauan → Gestão de Projetos
(3, 1, '2025-07-07'), -- Bruno → Python Básico
(5, 1, '2025-07-08'); -- Carlos → Python Básico


INSERT INTO pagamento (id_matricula, valor_pago, data_pagamento) VALUES
(1, 150.00, '2025-07-01'), -- Cauan pagou Python
(2, 100.00, '2025-07-02'), -- Ana pagou HTML CSS
(3, 130.00, '2025-07-03'), -- Bruno pagou UX
(6, 200.00, '2025-07-06'), -- Cauan pagou Gestão
(7, 150.00, '2025-07-07'), -- Bruno pagou Python
(8, 150.00, '2025-07-08'); -- Carlos pagou Python


INSERT INTO avaliacao (id_matricula, nota, comentario) VALUES
(1, 5, 'Curso incrível!'),
(2, 4, 'Bem didático.'),
(3, 3, 'Esperava mais.'),
(7, 5, 'Excelente conteúdo!');
