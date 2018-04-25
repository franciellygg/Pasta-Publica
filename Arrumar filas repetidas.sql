
===============================================================================================================================================
-- ARRUMAR LINHAS REPETIDAS DA BASE QUE CONTEM VARIÁVEIS DE CRÉDITO "base_cmr_122017.txt"
===============================================================================================================================================
1_Criar uma tabela auxiliar pegando todos os clientes com linhas repetidas:

create table tabela_teste1 as
select 
cd_cnpj_contraparte,
dt_base,
pc_utlz_chq_lim_glob_mes,
in_cheque_especial,
in_credito_pessoal,
in_financ_imobiliario,
in_cartao_credito,
in_financ_cartao_credito,
pc_utlz_chq_lim_glob_36m,
qt_utlz_chq_lim_glob_mes,
qt_utlz_chq_lim_glob_12m,
pc_a_utilizar_compr_cartao,
vr_sld_medio_semest_00070_sm,
qt_rtrit_hist_prim,
qt_rtrit_hist,
cd_possui_restr_historico,
possui_parcelado,
bacen_imo,
profissao_cadu,
score_5pf, count(*) as qtd from base_cmr_122017 group by 
cd_cnpj_contraparte,
dt_base,
pc_utlz_chq_lim_glob_mes,
in_cheque_especial,
in_credito_pessoal,
in_financ_imobiliario,
in_cartao_credito,
in_financ_cartao_credito,
pc_utlz_chq_lim_glob_36m,
qt_utlz_chq_lim_glob_mes,
qt_utlz_chq_lim_glob_12m,
pc_a_utilizar_compr_cartao,
vr_sld_medio_semest_00070_sm,
qt_rtrit_hist_prim,
qt_rtrit_hist,
cd_possui_restr_historico,
possui_parcelado,
bacen_imo,
profissao_cadu,
score_5pf
having qtd>1;

2_Criar uma tabela auxiliar pegando todos os clientes com linhas unicas: 

create table tabela_teste2 as
select 
cd_cnpj_contraparte,
dt_base,
pc_utlz_chq_lim_glob_mes,
in_cheque_especial,
in_credito_pessoal,
in_financ_imobiliario,
in_cartao_credito,
in_financ_cartao_credito,
pc_utlz_chq_lim_glob_36m,
qt_utlz_chq_lim_glob_mes,
qt_utlz_chq_lim_glob_12m,
pc_a_utilizar_compr_cartao,
vr_sld_medio_semest_00070_sm,
qt_rtrit_hist_prim,
qt_rtrit_hist,
cd_possui_restr_historico,
possui_parcelado,
bacen_imo,
profissao_cadu,
score_5pf, count(*) as qtd from base_cmr_122017 group by 
cd_cnpj_contraparte,
dt_base,
pc_utlz_chq_lim_glob_mes,
in_cheque_especial,
in_credito_pessoal,
in_financ_imobiliario,
in_cartao_credito,
in_financ_cartao_credito,
pc_utlz_chq_lim_glob_36m,
qt_utlz_chq_lim_glob_mes,
qt_utlz_chq_lim_glob_12m,
pc_a_utilizar_compr_cartao,
vr_sld_medio_semest_00070_sm,
qt_rtrit_hist_prim,
qt_rtrit_hist,
cd_possui_restr_historico,
possui_parcelado,
bacen_imo,
profissao_cadu,
score_5pf
having qtd=1;

3_Fazer união das duas tabelas auxiliares:

create table base_cmr_122017_linhas_unicas as
select
cd_cnpj_contraparte,
dt_base,
pc_utlz_chq_lim_glob_mes,
in_cheque_especial,
in_credito_pessoal,
in_financ_imobiliario,
in_cartao_credito,
in_financ_cartao_credito,
pc_utlz_chq_lim_glob_36m,
qt_utlz_chq_lim_glob_mes,
qt_utlz_chq_lim_glob_12m,
pc_a_utilizar_compr_cartao,
vr_sld_medio_semest_00070_sm,
qt_rtrit_hist_prim,
qt_rtrit_hist,
cd_possui_restr_historico,
possui_parcelado,
bacen_imo,
profissao_cadu,
score_5pf
from tabela_teste1
union all
select
cd_cnpj_contraparte,
dt_base,
pc_utlz_chq_lim_glob_mes,
in_cheque_especial,
in_credito_pessoal,
in_financ_imobiliario,
in_cartao_credito,
in_financ_cartao_credito,
pc_utlz_chq_lim_glob_36m,
qt_utlz_chq_lim_glob_mes,
qt_utlz_chq_lim_glob_12m,
pc_a_utilizar_compr_cartao,
vr_sld_medio_semest_00070_sm,
qt_rtrit_hist_prim,
qt_rtrit_hist,
cd_possui_restr_historico,
possui_parcelado,
bacen_imo,
profissao_cadu,
score_5pf
from tabela_teste2;

drop table tabela_teste1 purge;
drop table tabela_teste2 purge;


-- SEGUINTE FAZER O JOIN DAS VARIAVEIS FIXAS + LOG + BASE VARIÁVEIS DE CRÉDITO.
create table base_cmr_122017_linhas_unicas_join_log as 
select A.*, B.dt_base, B.pc_utlz_chq_lim_glob_mes, B.in_cheque_especial, B.in_credito_pessoal, B.in_financ_imobiliario, B.in_cartao_credito, B.in_financ_cartao_credito, B.pc_utlz_chq_lim_glob_36m, B.qt_utlz_chq_lim_glob_mes, B.qt_utlz_chq_lim_glob_12m, B.pc_a_utilizar_compr_cartao, B.vr_sld_medio_semest_00070_sm, B.qt_rtrit_hist_prim, B.qt_rtrit_hist, B.cd_possui_restr_historico, B.possui_parcelado, B.bacen_imo, B.profissao_cadu, B.score_5pf
from 7kk_full_fixa_log as A join
base_cmr_122017_linhas_unicas as B  
on A.numero_cpf_cnpj = B.cd_cnpj_contraparte;
