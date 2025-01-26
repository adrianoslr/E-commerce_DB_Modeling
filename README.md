
# E-commerce Database Modeling

Este projeto apresenta a modelagem de um banco de dados para um cenário de e-commerce. O objetivo é implementar um esquema lógico que atenda aos requisitos descritos, incluindo consultas SQL complexas.

## Cenário

- **Clientes:** Divididos entre Pessoa Jurídica (PJ) e Pessoa Física (PF).
- **Pagamento:** Cadastro de múltiplas formas de pagamento por cliente.
- **Entrega:** Controle de status e código de rastreamento.
- **Produtos e Fornecedores:** Produtos possuem estoque e estão vinculados a fornecedores.

## Arquivos

- `schema.sql`: Script para criação das tabelas.
- `queries.sql`: Consultas SQL complexas para extração de dados.
- `diagram.png`: (Opcional) Diagrama do modelo lógico.

## Instruções

1. Execute o script `schema.sql` para criar o esquema do banco de dados.
2. Use o script `queries.sql` para realizar consultas e testes no banco de dados.

## Consultas Implementadas

- Quantos pedidos foram feitos por cliente.
- Relação de produtos, fornecedores e estoques.
- Verificação de vendedores que também são fornecedores.
- Relação de nomes dos fornecedores e produtos.
