CREATE TABLE municipio(
	cod_municipio INTEGER PRIMARY KEY, 
	nome_municipio VARCHAR(30)
);

CREATE TABLE cnae(
    cod_cnae SERIAL PRIMARY KEY,
	setor_cnae VARCHAR(30),
	cod_subsetor VARCHAR(8),
	subsetor_cnae_agrupado VARCHAR(30),
	subsetor_cnae_nome VARCHAR (30)
);

CREATE TABLE usuario(
    cnpj NUMERIC(14) PRIMARY KEY,
	nome VARCHAR(30),
	porte VARCHAR(30),
	area_operacional VARCHAR(30),
	uf VARCHAR(2)
);

CREATE TABLE cliente(
	cnpj NUMERIC(14) PRIMARY KEY,
	natureza_cliente VARCHAR(30),
    setor_bndes VARCHAR(30),
	subsetor_bndes VARCHAR(30),
    cod_municipio INTEGER, 
    cod_setor_cnae INTEGER, 
    FOREIGN KEY(cnpj) references usuario,
    FOREIGN KEY(cod_setor_cnae) references cnae,
	FOREIGN KEY(cod_municipio) references municipio
);

CREATE TABLE exportador(
	cnpj NUMERIC(14) PRIMARY KEY,
	setor_atividade VARCHAR(30),
	FOREIGN KEY(cnpj) references usuario
);

CREATE TABLE operacao(
	numero SERIAL PRIMARY KEY,
	fontes_de_recurso_desembolsados VARCHAR(30),
	modalidade_de_apoio VARCHAR(30),
	forma_apoio VARCHAR(30)
);

CREATE TABLE pre(
	numero INTEGER PRIMARY KEY,
	inovacao VARCHAR(5),
    valor_desembolsado MONEY,
    valor_de_operacao MONEY,
	instrumento_financeiro VARCHAR(30),
	FOREIGN KEY (numero) references operacao
);

CREATE TABLE pos(
	numero INTEGER PRIMARY KEY,
	tipo_garantia VARCHAR(30),
	descricao VARCHAR(100),
	custo_financeiro VARCHAR(50),
	pais_destino VARCHAR(20),
	moeda_sigla VARCHAR(20),
	categoria VARCHAR(30),
	modalidade_operacional VARCHAR(20),
    mutuario VARCHAR(30),
    FOREIGN KEY (numero) references operacao
);

CREATE TABLE operacao_usuario(
	cnpj NUMERIC(14),
	numero INTEGER, 
	data_de_contratacao DATE,
	situacao_da_operacao VARCHAR(20),
	FOREIGN KEY (cnpj) references usuario,
	FOREIGN KEY (numero) references operacao,
	PRIMARY KEY (cnpj, numero, data_de_contratacao)
);

CREATE TABLE financeira( 
    cnpj_financeira NUMERIC(14) PRIMARY KEY,
	instituicao_financeira_credenciada VARCHAR(30)
);

CREATE TABLE operacao_financiamento(
    numero INTEGER, 
 	cnpj_financeira NUMERIC(14),
	FOREIGN KEY (numero) references operacao,
    FOREIGN KEY (cnpj_financeira) references financeira,
	PRIMARY KEY(numero, cnpj_financeira)
);