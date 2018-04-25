create table fgastardi_renc_invest_quartil as 
select cpf, case when quartil <= -0.36 then 1
     when quartil > -0.36 and quartil <=0 then 2
     when quartil > 0 and quartil <=0.17 then 3
     when quartil > 0.17 then 4 end as quartil 
from quartil;


create table renc_negativo_fran as 
select cpf, x_renc_negativo
from (select numero_cpf_cnpj as cpf, case when renc_medio < 0 then 1 else 0 end as x_renc_negativo
from amostra_conta_ativa_cpf_unicos_renc_investimento
) as a;


create table amostra_conta_ativa_cpf_unicos_variaveis_fixas as
select numero_cpf_cnpj, qtd_contas, mais_de_uma, id_tipo_pessoa, id_codigo_segmento, id_codigo_segmento2, id_razao, 
idade_conta, idade_individuo, faixa_idade_individuo, faixa_idade_0_20, faixa_idade_21_30, faixa_idade_31_40, 
faixa_idade_41_50, faixa_idade_51_60, faixa_idade_61_70, faixa_idade_71_80, faixa_idade_maior80, 
is_classic, is_exclusive, is_prime, x_uf, x_reg, x_renc_negativo
from amostra_conta_ativa_cpf_unicos_safra_31_03_2016_correta17;
