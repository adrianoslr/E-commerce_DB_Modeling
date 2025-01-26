
-- Tabelas principais
CREATE TABLE Cliente (
    Cliente_ID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100),
    Email VARCHAR(100),
    Telefone VARCHAR(15)
);

CREATE TABLE Cliente_PJ (
    Cliente_ID INT PRIMARY KEY,
    CNPJ VARCHAR(18),
    Razao_Social VARCHAR(100),
    FOREIGN KEY (Cliente_ID) REFERENCES Cliente(Cliente_ID)
);

CREATE TABLE Cliente_PF (
    Cliente_ID INT PRIMARY KEY,
    CPF VARCHAR(14),
    Nome_Completo VARCHAR(100),
    FOREIGN KEY (Cliente_ID) REFERENCES Cliente(Cliente_ID)
);

CREATE TABLE Fornecedor (
    Fornecedor_ID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100),
    Telefone VARCHAR(15)
);

CREATE TABLE Produto (
    Produto_ID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100),
    Estoque INT,
    Preco DECIMAL(10, 2),
    Fornecedor_ID INT,
    FOREIGN KEY (Fornecedor_ID) REFERENCES Fornecedor(Fornecedor_ID)
);

CREATE TABLE Pedido (
    Pedido_ID INT PRIMARY KEY AUTO_INCREMENT,
    Cliente_ID INT,
    Data DATE,
    Total DECIMAL(10, 2),
    FOREIGN KEY (Cliente_ID) REFERENCES Cliente(Cliente_ID)
);

CREATE TABLE Entrega (
    Entrega_ID INT PRIMARY KEY AUTO_INCREMENT,
    Codigo_Rastreamento VARCHAR(50),
    Status VARCHAR(50)
);

CREATE TABLE Forma_Pagamento (
    Forma_Pagamento_ID INT PRIMARY KEY AUTO_INCREMENT,
    Cliente_ID INT,
    Tipo_Pagamento VARCHAR(50),
    Descricao VARCHAR(100),
    FOREIGN KEY (Cliente_ID) REFERENCES Cliente(Cliente_ID)
);

CREATE TABLE Pedido_Produto (
    Pedido_ID INT,
    Produto_ID INT,
    Quantidade INT,
    PRIMARY KEY (Pedido_ID, Produto_ID),
    FOREIGN KEY (Pedido_ID) REFERENCES Pedido(Pedido_ID),
    FOREIGN KEY (Produto_ID) REFERENCES Produto(Produto_ID)
);
