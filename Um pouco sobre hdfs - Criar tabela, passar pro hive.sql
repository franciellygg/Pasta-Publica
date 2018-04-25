#Passar do hive para o jupyter notebook
hive -e "use dcd; set hive.cli.print.header=true; select * from 7kk_fixa_log_cred_hab_dummies_y_2;" > /home/fgastardi/7kk_fixa_log_cred_hab_dummies_y_2

# Executar impala pelo hdfs endereçando jupyter
imp -f /home/fgastardi/untilr.sql

#listar arquivos
hdfs dfs -ls /user/hive/warehouse/dcd.db/cmr_fran
#ver o tamanho do arquivo: 
hdfs dfs -du -h /user/hive/warehouse/dcd.db/cmr_fran
#excluir pasta
hdfs dfs -rm -r -skipTrash /user/hive/warehouse/dcd.db/cmr_fran/base_19_03_2018_CMR

#Passar do jupyter para o hive
#criar pasta
hdfs dfs -mkdir /user/hive/warehouse/dcd.db/cmr_fran/base_19_03_2018_CMR
#Copia do jupyter para o hdfs
hdfs dfs -copyFromLocal /home/fgastardi/clientes_201709_aval_mskd.txt /user/hive/warehouse/dcd.db/cmr_fran/base_19_03_2018_CMR/clientes_201709_aval_mskd.txt

create external table clientes_201709_aval_mskd_1 (cd_cnpj_contraparte string, segmento string, cpf11 string, agencia string, contacorr string, resultado_final_cliente string, resultado_final_cart string, resultado_final_rot string, resultado_final_parc string, resultado_final_cdc string, resultado_final_imo string, resultado_final_pub_consig string, resultado_final_priv_consig string, limite_lime string, lime_disp string, vl_util_lime string, situacao_lime string, desc_situacao string, eleg_fin_parcelado string)
row format delimited
fields terminated by '\u0059'
location '/user/hive/warehouse/dcd.db/cmr_fran/base_19_03_2018_CMR';

#Eliminar a primeira linha da tabela 
create table clientes_201709_aval_mskd as
select cd_cnpj_contraparte, segmento, cpf11, agencia, contacorr, resultado_final_cliente, resultado_final_cart, resultado_final_rot, resultado_final_parc, resultado_final_cdc, resultado_final_imo, resultado_final_pub_consig, resultado_final_priv_consig, cast(limite_lime as float) as limite_lime, cast(lime_disp as float) as lime_disp, cast(vl_util_lime as float) as vl_util_lime, cast(situacao_lime as float) as situacao_lime, desc_situacao, cast (eleg_fin_parcelado as int) as eleg_fin_parcelado
from clientes_201709_aval_mskd_1 where cd_cnpj_contraparte !='CD_CNPJ_CONTRAPARTE';
