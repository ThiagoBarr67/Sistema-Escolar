-- CRIAÇÃO DAS TABELAS

CREATE TABLE produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(100),
    autor VARCHAR(100),
    preco DECIMAL(10,2),
    estoque INT
);

CREATE TABLE pedidos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cliente VARCHAR(100),
    produto_id INT,
    quantidade INT,
    data_pedido DATE,
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

-- INSERÇÃO DE DADOS 

INSERT INTO produtos (titulo, autor, preco, estoque) VALUES
('Dom Casmurro', 'Machado de Assis', 29.90, 50),
('O Pequeno Príncipe', 'Antoine de Saint-Exupéry', 35.00, 40),
('1984', 'George Orwell', 42.50, 30);

INSERT INTO pedidos (cliente, produto_id, quantidade, data_pedido) VALUES
('Ana Silva', 1, 2, '2025-07-10'),
('João Souza', 2, 1, '2025-07-11'),
('Maria Lima', 3, 1, '2025-07-11');
