-- CRIAÇÃO DAS TABELAS

CREATE TABLE alunos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    email VARCHAR(100),
    data_nascimento DATE
);

CREATE TABLE cursos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    carga_horaria INT
);

CREATE TABLE matriculas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    aluno_id INT,
    curso_id INT,
    data_matricula DATE,
    FOREIGN KEY (aluno_id) REFERENCES alunos(id),
    FOREIGN KEY (curso_id) REFERENCES cursos(id)
);
-- INSERÇÃO DE DADOS

INSERT INTO alunos (nome, email, data_nascimento) VALUES
('Carlos Souza', 'carlos@email.com', '2000-03-15'),
('Fernanda Lima', 'fernanda@email.com', '1998-07-22'),
('João Pedro', 'joao@email.com', '2002-01-10');

INSERT INTO cursos (nome, carga_horaria) VALUES
('Banco de Dados', 60),
('Desenvolvimento Web', 80),
('Redes de Computadores', 70);

INSERT INTO matriculas (aluno_id, curso_id, data_matricula) VALUES
(1, 1, '2025-07-01'),
(1, 2, '2025-07-02'),
(2, 3, '2025-07-05');

-- ATUALIZAÇÃO, REMOÇÃO E CONSULTA

-- Atualizar email
UPDATE alunos
SET email = 'carlos.souza@escola.com'
WHERE nome = 'Carlos Souza';

-- Remover matrícula
DELETE FROM matriculas
WHERE aluno_id = 3 AND curso_id = 1;

-- Consultar alunos e cursos
SELECT a.nome AS aluno, c.nome AS curso, m.data_matricula
FROM matriculas m
JOIN alunos a ON m.aluno_id = a.id
JOIN cursos c ON m.curso_id = c.id;
