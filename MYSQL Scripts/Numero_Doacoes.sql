use db_doacao_sangue;
select tbl_pessoa.nome_pessoa as Nome,tbl_pessoa.sobrenome_pessoa as Sobrenome, COUNT(tbl_doacao.volume_doacao) as Doações
from tbl_doacao
left join tbl_pessoa
on tbl_doacao.id_doador = tbl_pessoa.id_pessoa
group by(tbl_pessoa.id_pessoa)