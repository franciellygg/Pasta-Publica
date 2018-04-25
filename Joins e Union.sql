#Join simples com mais de uma chave
create table Bases_PUSH_retorno_ao_DCD_1arquivo_fran_join_2 as 
select A.*, B.sim, B.BH
from Bases_PUSH_retorno_ao_DCD_1arquivo as A join #Left join, Right join, full join  
bases_push_retorno_ao_dcd_1arquivo as B  
on A.numero_cpf_cnpj = B.numero_cpf_cnpj and 
A.numero_agencia = B.numero_agencia and 
A.numero_conta = B.numero_conta;


#Somente a parte A sem a interseção
create table Bases_PUSH_retorno_ao_DCD_1arquivo_fran_join_2 as 
select A.*, B.sim, B.BH
from Bases_PUSH_retorno_ao_DCD_1arquivo as A left join #Right join - caso queira a parte B
bases_push_retorno_ao_dcd_1arquivo as B  
on A.numero_cpf_cnpj = B.numero_cpf_cnpj
where B.numero_cpf_cnpj is NULL; #A.numero_cpf_cnpj - caso queira a parte B;

#Union
create table 7kk_full_union_final_1 as
select numero_cpf_cnpj, x_q1m_can_aa_f, x_q1m_can_aa_nf, x_q1m_can_mb_f, x_q1m_can_mb_nf, x_q1m_can_ib_f, x_q1m_can_ib_nf, x_q1m_can_ff_f, x_q1m_can_ff_nf, x_q1a_can_aa_f, x_q1a_can_aa_nf, x_q1a_can_mb_f, x_q1a_can_mb_nf, x_q1a_can_ib_f, x_q1a_can_ib_nf, x_q1a_can_ff_f, x_q1a_can_ff_nf, x_q1m_bh1_0_4_f, x_q1m_bh1_0_4_nf, x_q1m_bh1_4_8_f, x_q1m_bh1_4_8_nf, x_q1m_bh1_8_12_f, x_q1m_bh1_8_12_nf, x_q1m_bh1_12_16_f, x_q1m_bh1_12_16_nf, x_q1m_bh1_16_20_f, x_q1m_bh1_16_20_nf, x_q1m_bh1_20_24_f, x_q1m_bh1_20_24_nf, x_q1a_bh1_0_4_f, x_q1a_bh1_0_4_nf, x_q1a_bh1_4_8_f, x_q1a_bh1_4_8_nf, x_q1a_bh1_8_12_f, x_q1a_bh1_8_12_nf, x_q1a_bh1_12_16_f, x_q1a_bh1_12_16_nf, x_q1a_bh1_16_20_f, x_q1a_bh1_16_20_nf, x_q1a_bh1_20_24_f, x_q1a_bh1_20_24_nf, x_q1m_fim_semana_f, x_q1m_fim_semana_nf, x_q1a_fim_semana_f, x_q1a_fim_semana_nf, x_qconsulta_24_06h, x_qconsulta_06_12h, x_qconsulta_12_18h, x_qconsulta_18_24h, x_tmqsaques_aa_1m, x_tmqsaques_aa_1m_quartil, x_tmqsaques_aa_1m_q1, x_tmqsaques_aa_1m_q2, x_tmqsaques_aa_1m_q3, x_tmqsaques_aa_1m_q4, x_tmqsaques_aa_2m, x_tmqsaques_aa_2m_quartil, x_tmqsaques_aa_2m_q1, x_tmqsaques_aa_2m_q2, x_tmqsaques_aa_2m_q3, x_tmqsaques_aa_2m_q4, x_tmqsaques_aa_1a, x_tmqsaques_aa_1a_quartil, x_tmqsaques_aa_1a_q1, x_tmqsaques_aa_1a_q2, x_tmqsaques_aa_1a_q3, x_tmqsaques_aa_1a_q4, x_tmqtransfer_aa_1m, x_tmqtransfer_aa_1m_quartil, x_tmqtransfer_aa_1m_q1, x_tmqtransfer_aa_1m_q2, x_tmqtransfer_aa_1m_q3, x_tmqtransfer_aa_1m_q4, x_tmqtransfer_aa_2m, x_tmqtransfer_aa_2m_quartil, x_tmqtransfer_aa_2m_q1, x_tmqtransfer_aa_2m_q2, x_tmqtransfer_aa_2m_q3, x_tmqtransfer_aa_2m_q4, x_tmqtransfer_aa_1a, x_tmqtransfer_aa_1a_quartil, x_tmqtransfer_aa_1a_q1, x_tmqtransfer_aa_1a_q2, x_tmqtransfer_aa_1a_q3, x_tmqtransfer_aa_1a_q4, x_tmqinvestim_aa_1m, x_tmqinvestim_aa_1m_quartil, x_tmqinvestim_aa_1m_q1, x_tmqinvestim_aa_1m_q2, x_tmqinvestim_aa_1m_q3, x_tmqinvestim_aa_1m_q4, x_tmqinvestim_aa_2m, x_tmqinvestim_aa_2m_quartil, x_tmqinvestim_aa_2m_q1, x_tmqinvestim_aa_2m_q2, x_tmqinvestim_aa_2m_q3, x_tmqinvestim_aa_2m_q4, x_tmqinvestim_aa_1a, x_tmqinvestim_aa_1a_quartil, x_tmqinvestim_aa_1a_q1, x_tmqinvestim_aa_1a_q2, x_tmqinvestim_aa_1a_q3, x_tmqinvestim_aa_1a_q4, x_somatsaques_aa_1m, x_somatsaques_aa_1m_quartil, x_somatsaques_aa_1m_q1, x_somatsaques_aa_1m_q2, x_somatsaques_aa_1m_q3, x_somatsaques_aa_1m_q4, x_somatsaques_aa_6m, x_somatsaques_aa_6m_quartil, x_somatsaques_aa_6m_q1, x_somatsaques_aa_6m_q2, x_somatsaques_aa_6m_q3, x_somatsaques_aa_6m_q4, x_tmqlime1m, x_tmqlime1m_quartil, x_tmqlime1m_q1, x_tmqlime1m_q2, x_tmqlime1m_q3, x_tmqlime1m_q4, x_tmqlime1a, x_tmqlime1a_quartil, x_tmqlime1a_q1, x_tmqlime1a_q2, x_tmqlime1a_q3, x_tmqlime1a_q4, x_q6m_produto, x_q1a_produto, x_c6m_produto, x_c1a_produto, x_tmq6m_produto, x_tmq1a_produto, x_soma6m_produto, x_soma1a_produto, profissao_cadu, score_acsp_19, qt_rtrit_hist_prim, flag_aposentado, renda_final, qt_rtrit_hist, score_5pf, pc_utlz_cartao_12m_exp, pc_utlz_cartao_36m, pc_utlz_cartao_mes, pc_utlz_chq_lim_glob_12m_exp, pc_utlz_chq_lim_glob_36m, pc_utlz_chq_lim_glob_mes, qt_default_36m, qt_dt_base_def_36m, qt_dt_base_inicio_36m, qt_meses_possui_cartao_12m, qt_meses_possui_cartao_36m, qt_meses_possui_chq_lim_glob_12m, qt_meses_possui_chq_lim_glob_36m, qt_utlz_cartao_12m, qt_utlz_cartao_mes, qt_utlz_chq_lim_glob_36m, dt_ultimo_rest_12meses, qt_meses_rest_12m, qt_princ_rtrit_hist_prim, cd_possui_restr_historico, possui_parcelado, pc_a_utilizar_compr_chq_lim_glob, pc_a_utilizar_compr_cartao, pc_a_utilizar_compr_ctagarant, bacen_imo, in_cdcveic_leasing, in_financ_imobiliario, qt_utlz_chq_lim_glob_mes, qt_utlz_chq_lim_glob_12m, pc_utlz_ctagarantida_12m_exp, qt_meses_possui_ctagarantida_12m, vr_sld_medio_semest_00070_sm, dt_conta, in_cartao_credito_0, in_cartao_credito_1, in_cheque_especial_0, in_cheque_especial_1, in_credito_pessoal_0, in_credito_pessoal_1, in_financ_cartao_credito_0, in_financ_cartao_credito_1, cd_possui_restr_historico_s, cd_possui_restr_historico_n, possui_parcelado_sim, possui_parcelado_nao, bacen_imo_sim, bacen_imo_nao, in_cdcveic_leasing_sim, in_cdcveic_leasing_nao, in_financ_imobiliario_sim, in_financ_imobiliario_nao
from 7kk_log_join_var_credito
union all
select numero_cpf_cnpj, x_q1m_can_aa_f, x_q1m_can_aa_nf, x_q1m_can_mb_f, x_q1m_can_mb_nf, x_q1m_can_ib_f, x_q1m_can_ib_nf, x_q1m_can_ff_f, x_q1m_can_ff_nf, x_q1a_can_aa_f, x_q1a_can_aa_nf, x_q1a_can_mb_f, x_q1a_can_mb_nf, x_q1a_can_ib_f, x_q1a_can_ib_nf, x_q1a_can_ff_f, x_q1a_can_ff_nf, x_q1m_bh1_0_4_f, x_q1m_bh1_0_4_nf, x_q1m_bh1_4_8_f, x_q1m_bh1_4_8_nf, x_q1m_bh1_8_12_f, x_q1m_bh1_8_12_nf, x_q1m_bh1_12_16_f, x_q1m_bh1_12_16_nf, x_q1m_bh1_16_20_f, x_q1m_bh1_16_20_nf, x_q1m_bh1_20_24_f, x_q1m_bh1_20_24_nf, x_q1a_bh1_0_4_f, x_q1a_bh1_0_4_nf, x_q1a_bh1_4_8_f, x_q1a_bh1_4_8_nf, x_q1a_bh1_8_12_f, x_q1a_bh1_8_12_nf, x_q1a_bh1_12_16_f, x_q1a_bh1_12_16_nf, x_q1a_bh1_16_20_f, x_q1a_bh1_16_20_nf, x_q1a_bh1_20_24_f, x_q1a_bh1_20_24_nf, x_q1m_fim_semana_f, x_q1m_fim_semana_nf, x_q1a_fim_semana_f, x_q1a_fim_semana_nf, x_qconsulta_24_06h, x_qconsulta_06_12h, x_qconsulta_12_18h, x_qconsulta_18_24h, x_tmqsaques_aa_1m, x_tmqsaques_aa_1m_quartil, x_tmqsaques_aa_1m_q1, x_tmqsaques_aa_1m_q2, x_tmqsaques_aa_1m_q3, x_tmqsaques_aa_1m_q4, x_tmqsaques_aa_2m, x_tmqsaques_aa_2m_quartil, x_tmqsaques_aa_2m_q1, x_tmqsaques_aa_2m_q2, x_tmqsaques_aa_2m_q3, x_tmqsaques_aa_2m_q4, x_tmqsaques_aa_1a, x_tmqsaques_aa_1a_quartil, x_tmqsaques_aa_1a_q1, x_tmqsaques_aa_1a_q2, x_tmqsaques_aa_1a_q3, x_tmqsaques_aa_1a_q4, x_tmqtransfer_aa_1m, x_tmqtransfer_aa_1m_quartil, x_tmqtransfer_aa_1m_q1, x_tmqtransfer_aa_1m_q2, x_tmqtransfer_aa_1m_q3, x_tmqtransfer_aa_1m_q4, x_tmqtransfer_aa_2m, x_tmqtransfer_aa_2m_quartil, x_tmqtransfer_aa_2m_q1, x_tmqtransfer_aa_2m_q2, x_tmqtransfer_aa_2m_q3, x_tmqtransfer_aa_2m_q4, x_tmqtransfer_aa_1a, x_tmqtransfer_aa_1a_quartil, x_tmqtransfer_aa_1a_q1, x_tmqtransfer_aa_1a_q2, x_tmqtransfer_aa_1a_q3, x_tmqtransfer_aa_1a_q4, x_tmqinvestim_aa_1m, x_tmqinvestim_aa_1m_quartil, x_tmqinvestim_aa_1m_q1, x_tmqinvestim_aa_1m_q2, x_tmqinvestim_aa_1m_q3, x_tmqinvestim_aa_1m_q4, x_tmqinvestim_aa_2m, x_tmqinvestim_aa_2m_quartil, x_tmqinvestim_aa_2m_q1, x_tmqinvestim_aa_2m_q2, x_tmqinvestim_aa_2m_q3, x_tmqinvestim_aa_2m_q4, x_tmqinvestim_aa_1a, x_tmqinvestim_aa_1a_quartil, x_tmqinvestim_aa_1a_q1, x_tmqinvestim_aa_1a_q2, x_tmqinvestim_aa_1a_q3, x_tmqinvestim_aa_1a_q4, x_somatsaques_aa_1m, x_somatsaques_aa_1m_quartil, x_somatsaques_aa_1m_q1, x_somatsaques_aa_1m_q2, x_somatsaques_aa_1m_q3, x_somatsaques_aa_1m_q4, x_somatsaques_aa_6m, x_somatsaques_aa_6m_quartil, x_somatsaques_aa_6m_q1, x_somatsaques_aa_6m_q2, x_somatsaques_aa_6m_q3, x_somatsaques_aa_6m_q4, x_tmqlime1m, x_tmqlime1m_quartil, x_tmqlime1m_q1, x_tmqlime1m_q2, x_tmqlime1m_q3, x_tmqlime1m_q4, x_tmqlime1a, x_tmqlime1a_quartil, x_tmqlime1a_q1, x_tmqlime1a_q2, x_tmqlime1a_q3, x_tmqlime1a_q4, x_q6m_produto, x_q1a_produto, x_c6m_produto, x_c1a_produto, x_tmq6m_produto, x_tmq1a_produto, x_soma6m_produto, x_soma1a_produto, profissao_cadu, score_acsp_19, qt_rtrit_hist_prim, flag_aposentado, renda_final, qt_rtrit_hist, score_5pf, pc_utlz_cartao_12m_exp, pc_utlz_cartao_36m, pc_utlz_cartao_mes, pc_utlz_chq_lim_glob_12m_exp, pc_utlz_chq_lim_glob_36m, pc_utlz_chq_lim_glob_mes, qt_default_36m, qt_dt_base_def_36m, qt_dt_base_inicio_36m, qt_meses_possui_cartao_12m, qt_meses_possui_cartao_36m, qt_meses_possui_chq_lim_glob_12m, qt_meses_possui_chq_lim_glob_36m, qt_utlz_cartao_12m, qt_utlz_cartao_mes, qt_utlz_chq_lim_glob_36m, dt_ultimo_rest_12meses, qt_meses_rest_12m, qt_princ_rtrit_hist_prim, cd_possui_restr_historico, possui_parcelado, pc_a_utilizar_compr_chq_lim_glob, pc_a_utilizar_compr_cartao, pc_a_utilizar_compr_ctagarant, bacen_imo, in_cdcveic_leasing, in_financ_imobiliario, qt_utlz_chq_lim_glob_mes, qt_utlz_chq_lim_glob_12m, pc_utlz_ctagarantida_12m_exp, qt_meses_possui_ctagarantida_12m, vr_sld_medio_semest_00070_sm, dt_conta, in_cartao_credito_0, in_cartao_credito_1, in_cheque_especial_0, in_cheque_especial_1, in_credito_pessoal_0, in_credito_pessoal_1, in_financ_cartao_credito_0, in_financ_cartao_credito_1, cd_possui_restr_historico_s, cd_possui_restr_historico_n, possui_parcelado_sim, possui_parcelado_nao, bacen_imo_sim, bacen_imo_nao, in_cdcveic_leasing_sim, in_cdcveic_leasing_nao, in_financ_imobiliario_sim, in_financ_imobiliario_nao
from 6kk_full_com_dummies_12_01_2018_v11;
