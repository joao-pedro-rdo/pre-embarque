CREATE VIEW vw_total_operacoes_clientes AS--valor total de operacoes por clientes// consulta apenas em clientes pre-embarque
	SELECT nome, SUM(valor_de_operacao) AS total_cliente FROM usuario
		INNER JOIN operacao_usuario
			ON operacao_usuario.cnpj = usuario.cnpj
		INNER JOIN pre
			ON operacao_usuario.numero = pre.numero
		GROUP BY nome;


CREATE VIEW vw_info_operacao_usuario AS --consulta das informacoes da operacao e do cliente, ocultando cnpj do cliente e valores da operacao
	SELECT nome, porte, area_operacional, operacao.numero AS numero_da_operacao, 
		data_de_contratacao, situacao_da_operacao, fontes_de_recurso_desembolsados,
		modalidade_de_apoio, forma_apoio, inovacao, instrumento_financeceiro FROM usuario
		INNER JOIN operacao_usuario
			ON usuario.cnpj = operacao_usuario.cnpj
		INNER JOIN operacao
			ON operacao_usuario.numero = operacao.numero
		INNER JOIN pre
			ON operacao.numero = pre.numero;


CREATE VIEW vw_clientes_pre_embarque AS	--consulta apenas os clientes de pre-embarque
	SELECT nome, cliente.cnpj FROM usuario
		INNER JOIN cliente
			ON usuario.cnpj = cliente.cnpj;


CREATE VIEW vw_clientes_pos_embarque AS	--consulta apenas os clientes de pos-embarque
	SELECT nome, exportador.cnpj FROM usuario
		INNER JOIN exportador
			ON usuario.cnpj = exportador.cnpj;


CREATE VIEW vw_exportacoes_argentina AS --consulta nome cliente e numero da operacao em todas as operacoes que tem como pais destino a argentina 
	SELECT nome, pos.numero AS numero_operacao, pais_destino FROM usuario
		INNER JOIN operacao_usuario
			ON usuario.cnpj = operacao_usuario.cnpj
		INNER JOIN pos
			ON operacao_usuario.numero = pos.numero
		WHERE pais_destino = 'ARGENTINA';
		
CREATE VIEW vw_usuario_porte_grande AS --consulta apenas os usuarios de porte grande
	SELECT nome, cnpj, porte FROM usuario
		WHERE porte = 'GRANDE';