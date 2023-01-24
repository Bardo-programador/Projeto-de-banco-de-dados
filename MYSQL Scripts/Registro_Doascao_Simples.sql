use db_doacao_sangue;
select tbl_doacao.data_doacao as Data, tbl_doacao.volume_doacao as Volume, tbl_pessoa.nome_pessoa as Nome, tbl_pessoa.sobrenome_pessoa as Sobrenome, tbl_pessoa.tipo_sanguineo_pessoa as Tipo
from tbl_doacao
left join tbl_pessoa
on tbl_doacao.id_doador = tbl_pessoa.id_pessoa