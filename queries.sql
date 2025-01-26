
-- Quantos pedidos foram feitos por cliente
SELECT c.Nome, COUNT(p.Pedido_ID) AS Total_Pedidos
FROM Cliente c
LEFT JOIN Pedido p ON c.Cliente_ID = p.Cliente_ID
GROUP BY c.Nome;

-- Algum vendedor também é fornecedor
SELECT DISTINCT v.Nome
FROM Fornecedor f
INNER JOIN Cliente v ON f.Nome = v.Nome;

-- Relação de produtos, fornecedores e estoques
SELECT p.Nome AS Produto, f.Nome AS Fornecedor, p.Estoque
FROM Produto p
JOIN Fornecedor f ON p.Fornecedor_ID = f.Fornecedor_ID;

-- Relação de nomes dos fornecedores e produtos
SELECT f.Nome AS Fornecedor, p.Nome AS Produto
FROM Fornecedor f
JOIN Produto p ON f.Fornecedor_ID = p.Fornecedor_ID;
