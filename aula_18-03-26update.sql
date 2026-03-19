#AULA 18/03/2026 - GERANDO RELATÓRIO DE VENDAS

 -- RELATÓRIO DE VENDAS VÁLIDAS
 
 /*Gerrência da área de vendas de vendas da empresade sucos de frutas
 que um relatório qie mostre dentre todas vendas, quais delas
 foram válidas e quais foram inválidas*/
 
 /*1º Obter o volume total de vendas
 para cada cliente dentro de 1 mês*/
 
 Select * from  notas_fiscais;
 Select * from itens_notas_fiscais;
 
  -- Juncaõ das duas tabelas com JOIN
  Select nf, cpf, data_venda, inf.quantidade
  FROM notas_fiscais AS nf
  INNER JOIN itens_notas_fiscais AS inf
  ON NF.numero = inf.numero;
  
  -- Isolando o ano e mês
  Select nf.cpf, date_format(nf.data_venda,'%Y-%m') AS ano_mês,
  inf.quantidade
  FROM notas_fiscais AS nf
  INNER JOIN itens_notas_fiscais AS inf
  ON nf.numero = inf.numero;
  
  -- Agrupar e Somar o Campo  Quantidade
  Select nf.cpf, date_format(nf.data_venda,'%Y-%m') AS ano_mês, 
  Sum(inf.quantidade) AS qntd_vendas from notas_fiscais AS nf
  INNER  JOIN itens_notas_fiscais AS nf ON nf.numero = nf.numero
  GROUP BY nf.cpf,date_format(nf.data_venda,'%Y-%m');
  
  /* Obter o Limite de Volume Total Compra por */
Select nf.cpf, date_format(nf.data_venda,'%y-%m') AS ano_mês, sum(inf.quantidade) AS qntd_vendas 
from notas_fiscais AS nf INNER JOIN itens_notas_fiscais AS inf ON nf.numero = inf.numero
GROUP BY nf.cpf,date_format(nf.data_venda,'%y-%m'); 

-- Subquery
Select x.cpf, x.nome, x.ano_mês, x.qntd_vendas, x.qntd_limite
FROM(Select nf.cpf, tc.nome, date_format(nf.data_venda,'%Y-%m') AS ano_mês,
Sum(inf.quantidade) AS qntd_vendas,MAX(tc.volume_de_compra) AS qntd_limite
FROM notas_fiscais AS nf INNER JOIN itens_notas_fiscais AS inf ON nf.numero = inf.numero 
INNER JOIN tabela_de _clientes AS tc ON tc.cpf = nf.cpf
GROUP BY nf.cpf, tc.nome, date_format(nf.data_venda,'%Y-%m')) AS x; 

SELECT X.CPF, X.NOME, X.ANO_MES, X.QNTD_VENDAS, X.QNTD_LIMITE
FROM(
SELECT NF.CPF, TC.NOME,
DATE_FORMAT(NF.DATA_VENDA, '%Y-%m') AS ANO_MES,
SUM(INF.QUANTIDADE) AS QNTD_VENDAS,
TC.VOLUME_DE_COMPRA AS QNTD_LIMITE
FROM notas_fiscais AS NF
INNER JOIN itens_notas_fiscais AS INF
ON NF.NUMERO = INF.NUMERO
INNER JOIN tabela_de_clientes AS TC
ON TC.CPF = NF.CPF
GROUP BY NF.CPF, TC.NOME, DATE_FORMAT(NF.DATA_VENDA, '%Y-%m')) AS X;

