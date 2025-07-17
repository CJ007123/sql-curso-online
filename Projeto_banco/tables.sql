CREATE TABLE categoria(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(100) NOT NULL
);


CREATE TABLE curso(
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_categoria INT NOT NULL,
    nome_curso VARCHAR(100) NOT NULL,
    carga_horaria INT NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES categoria(id)
);


CREATE TABLE aluno(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_aluno VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL
);


CREATE TABLE matricula(
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT,
    id_curso INT,
    data_matricula DATE NOT NULL,
    FOREIGN KEY (id_aluno) REFERENCES aluno(id),
    FOREIGN KEY (id_curso) REFERENCES curso(id)
);


CREATE TABLE pagamento(
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_matricula INT ,
    valor_pago DECIMAL(10,2),
    data_pagamento DATE,
    FOREIGN KEY (id_matricula) REFERENCES matricula(id)
);


CREATE TABLE avaliacao(
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_matricula INT,
    nota INT CHECK (nota BETWEEN 1 AND 5), 
    comentario TEXT,
    FOREIGN KEY (id_matricula) REFERENCES matricula(id)
);
