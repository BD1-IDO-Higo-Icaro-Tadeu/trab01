select pessoa.nome,pessoa.email,pessoa.cpf_id,pessoa.rg,pessoa.senha,servico.servico_oferecido,contato.contato,cep.rua as rua,bairro.bairro,cidade.cidade,estado.sigla as estado, pessoa.num_casa, cep.cep_id from pessoa
inner join avaliacao on (pessoa.cpf_id = avaliacao.cliente_fid)
inner join servico_contratado on (pessoa.cpf_id = servico_contratado.usuario_fid)
inner join servico on (servico.servico_id = pessoa.servico_fid)
inner join servico_descricao on (pessoa.cpf_id = servico_descricao.usuario_fid)
inner join contato on (pessoa.cpf_id =  contato.usuario_fid)
inner join cartao on (pessoa.cpf_id = cartao.cliente_fid)
inner join endereco on (pessoa.cpf_id= endereco.usuario_fid)
inner join cep on (endereco.cep_fid = cep.cep_id)
inner join bairro on (bairro.bairro_id = cep.bairro_fid)
inner join cidade on (cidade.cidade_id = bairro.cidade_fid)
inner join estado on (cidade.cidade_id = estado.estado_id) where contato.tipo_contato ='telefone'