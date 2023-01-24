select tipo_sanguineo_pessoa as Tipo, count(id_pessoa) as Quantidade from tbl_pessoa
group by Tipo;