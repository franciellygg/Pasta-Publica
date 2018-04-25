select count(qtd_contas) as count, avg(qtd_contas) as mean, stddev(qtd_contas) as std, min(qtd_contas)as min, max(qtd_contas) as max from conta_ativa_2017_v6_amostra_3kk;

select percentile (idade_conta, 0.25) as q1,  percentile (idade_conta, 0.50) as q2_mediana, percentile (idade_conta, 0.75) as q3
from conta_ativa_2017_v6_amostra_3kk;

#Caso o número seja double ou float
select percentile (cast (idade_conta as bigint), 0.25) as q1,  percentile (cast (idade_conta as bigint), 0.5) as q2, percentile (cast (idade_conta as bigint), 0.75) as q3
from conta_ativa_2017_v6_amostra_3kk;
