CREATE TABLE municipio(
    cod_municipio INTEGER PRIMARY KEY,
    nome_municipio VARCHAR(30)
    --uf VARCHAR(2)
);

CREATE TABLE cnae(
    cod_cnae SERIAL PRIMARY KEY, 
	setor_cnae VARCHAR(30),
	cod_subsetor INTEGER,	
	subsetor_cnae_agrupado VARCHAR(30),
	subsetor_cnae_nome VARCHAR (30)
);

CREATE TABLE usuario(
    cnpj NUMERIC(14) PRIMARY KEY,
	nome VARCHAR(30),
	porte VARCHAR(30),
	area_operacional VARCHAR(30),
	cod_municipio INTEGER, -- vai ir em cliente ??
    cod_setor_cnae INTEGER, -- vair ir em cliente ??
    FOREIGN KEY(cod_setor_cnae) references cnae,
    FOREIGN KEY(cod_municipio) references municipio 
);

CREATE TABLE cliente(
	cnpj NUMERIC(14),
	natureza_cliente VARCHAR(30),
    setor_bndes VARCHAR(30),
	subsetor_bndes VARCHAR(30),
	FOREIGN KEY(cnpj) references usuario
);
CREATE TABLE exportador(
	setor_atividade VARCHAR(30),
	cnpj NUMERIC(14),
	FOREIGN KEY(cnpj) references usuario
);

CREATE TABLE produto(
	numero SERIAL PRIMARY KEY,
    valor_desembolsado MONEY,
	fontes_de_recurso_desembolsados VARCHAR(30),
	modalidade_de_apoio VARCHAR(30),
	forma_apoio VARCHAR(30),
	categoria VARCHAR(30)
);

CREATE TABLE pre(
	numero SERIAL,
	valor_de_operacao MONEY,
	instrumento_financeceiro VARCHAR(30),
	FOREIGN KEY (numero) references produto

);

CREATE TABLE pos(
	numero SERIAL,
	tipo_garantia VARCHAR(30),
	descricao VARCHAR(100),
	custo_financeiro NUMERIC(10),
	pais_destino VARCHAR(20),
	moeda_sigla VARCHAR(4),
	FOREIGN KEY (numero) references produto

);
CREATE TABLE produto_usuario(
	cnpj NUMERIC(14) PRIMARY KEY,
	numero SERIAL,
	data_de_contratacao DATE,
	situacao_da_operacao VARCHAR(20),
	FOREIGN KEY (cnpj) references usuario,
	FOREIGN KEY (numero) references produto
);

CREATE TABLE financeira(
    cnpj_financeira NUMERIC(14) PRIMARY KEY,
	instituicao_financeira_credenciada VARCHAR(30)
);

CREATE TABLE produto_financiamento(
    numero SERIAL,
 	cnpj_financeira NUMERIC(14),
	FOREIGN KEY (numero) references produto,
    FOREIGN KEY (cnpj_financeira) references financeira

);






