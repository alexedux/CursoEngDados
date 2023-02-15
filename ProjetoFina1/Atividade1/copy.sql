copy nome_tabela 
from 'caminho do arquivo no s3' 
CREDENTIALS 'aws_access_key_id=?????;aws_secret_access_key=?????' 
delimiter ';' 
region 'região do s3'
IGNOREHEADER 1
DATEFORMAT AS 'YYYY-MM-DD HH:MI:SS'
removequotes;
