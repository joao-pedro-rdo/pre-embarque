CREATE TABLE MUNICIPIO(
    cod_municicpio INTEGER PRIMARY KEY,
    nome_municipio VARCHAR[30],
    UF VARCHAR[2]
)

CREATE TABLE cnae(
    cod_cnae INTEGER PRIMARY KEY, 
	setor_cnae VARCHAR[30],
	subsetor_cnae_agrupado VARCHAR[30],
	subsetor_cnae_nome	VARCHAR [30]
)

CREATE TABLE cliente(
    cnpj_cliente NUMERIC[14] PRIMARY KEY,
	nome_cliente VARCHAR[30],
	porte_cliente VARCHAR[30],
	natureza_cliente VARCHAR[30],
    setor_bndes VARCHAR[30],
	subsetor_bndes VARCHAR[30],
	area_operacional VARCHAR[30],
	cod_municicpio INTEGER,
    cod_setor_cnae INTEGER,
    FOREIGN KEY(cod_setor_cnae) references cnae,
    FOREIGN KEY(cod_municicpio) references MUNICIPIO 
)

CREATE TABLE financiamento(
	cod_financiamento SERIAL PRIMARY KEY,
    valor_desembolsado MONEY,
	valor_de_operação MONEY,
	fontes_de_recurso_desembolsados MONEY,
	modalidade_de_apoio VARCHAR[30],
	forma_apoio VARCHAR[30],
	instrumento_financeceiro VARCHAR[30],
	data_de_contratação DATE,
	situacao_da_operacao VARCHAR[20],
    cnpj_cliente NUMERIC[14],
	FOREIGN KEY (cnpj_cliente) references cliente
)

CREATE TABLE agente_financeiro(
    cnpj_do_agente_financeiro NUMERIC[14] PRIMARY KEY,
	inovacao VARCHAR[30],
	instituicao_financeira_credenciada VARCHAR[30]

)

CREATE TABLE AgenteFinanciamento(
    cod_financiamento SERIAL 
    cnpj_do_agente_financeiro NUMERIC[14],
    FOREIGN KEY (cod_financiamento) references financiamento,
    FOREIGN KEY (cnpj_do_agente_financeiro) references agente_financeiro

)






