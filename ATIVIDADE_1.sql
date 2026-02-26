Select * from tabela_de_produtos;

Select Distinct embalagens, tamanho, sabor from tabela_de_produtos;

Select Distinct embalagens, tamanho, sabor from tabela_de_produtos
Where embalagem = 'PET';

# QUAIS OS BAIRROS DA CIDADE DO 
# RIO DE JANEIRO QUE POSSUI CLIENTES?

# USO DO LIMIT

Select * from nome_da_tabela Limit 6;
Select * from tabela_de_produtos Limit 3,5;

# DESEJA-SE OBTER AS 10 PRIMEIRAS
-- VENDAS DO DIA 2017-01-01

Select *from notas_fiscais where DATA_VENDA = '2017-01-01' Limit 10;

# USO DO ORDER BY 

Select * from tabela_de_produtos;
Select * from tabela_de_produtos order by NOME_DO_PRODUTO;
Select * from tabela_de_produtos order by PRECO_DE_LISTA;

Select * from tabela_de_produtos
ORDER BY sabor, PRECO_DE_LISTA;

# TESTE COM DESC 
Select sabor, preco_de_lista from tabela_de_produtos order by preco_de_lista desc;

# QUAL (OU QUAIS) FOI (FORAM) A (AS) MAIOR (ES) VENDA (S)
-- DO PRODUTO ' LINHA REFRESCANTE - 1 LITRO - MORANGO/LIMAO
-- EM QUANTIDADE E PRECO?


 
 