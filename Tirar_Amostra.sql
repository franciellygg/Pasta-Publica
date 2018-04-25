CREATE TABLE 5kk_sample_cmr_nao_elegiveis_clientes_201709 AS
SELECT * 
FROM clientes_201709_aval_nao_elegiveis
distribute by rand()
sort by rand()
limit 5000000;
