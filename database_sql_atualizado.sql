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
	cnpj NUMERIC(14) PRIMARY KEY,--cliente nao teria q ter PK?
	natureza_cliente VARCHAR(30),
    setor_bndes VARCHAR(30),
	subsetor_bndes VARCHAR(30),
    cod_municipio INTEGER, --mudei para a tabela cliente, pois usamos apenas aqui
    cod_setor_cnae INTEGER, --mudei para a tabela cliente, pois usamos apenas aqui
    nome_municipio VARCHAR(30),
    FOREIGN KEY(cnpj) references usuario,
    FOREIGN KEY(cod_setor_cnae) references cnae
);

CREATE TABLE exportador(--exportador nao teria q ter PK?
	setor_atividade VARCHAR(30),
	cnpj NUMERIC(14) PRIMARY KEY,
	FOREIGN KEY(cnpj) references usuario
);

CREATE TABLE operacao(--mudei o nome para operacao, pois achei melhor, ja que os atributos se referem a operacao
	numero SERIAL PRIMARY KEY,
	fontes_de_recurso_desembolsados VARCHAR(30),
	modalidade_de_apoio VARCHAR(30),
	forma_apoio VARCHAR(30)
);

CREATE TABLE pre(--nao esta faltando inovacao?
	numero INTEGER PRIMARY KEY,--mudei para integer pois com serial acho q ficaria errado
	inovacao VARCHAR(5),--adicionei inovacao
    valor_desembolsado MONEY,--mudei para a tabela pre, pois nao aparece esse atributo em pos-embarque
    valor_de_operacao MONEY,
	instrumento_financeceiro VARCHAR(30),
	FOREIGN KEY (numero) references operacao

);

CREATE TABLE pos(--esta faltando modalidade operacional e mutuario
	numero INTEGER PRIMARY KEY,--mudei para integer pois com serial acho q ficaria errado
	tipo_garantia VARCHAR(30),
	descricao VARCHAR(100),
	custo_financeiro VARCHAR(50),--alterei o tipo pois eh string
	pais_destino VARCHAR(20),
	moeda_sigla VARCHAR(20),
	categoria VARCHAR(30),--nao iria apenas em pos? coloquei em pos pois nao tem em pre-embarque
	modalidade_operacional VARCHAR(20),--ADICIONEI
    mutuario VARCHAR(30),--ADICIONEI
    FOREIGN KEY (numero) references operacao
);

CREATE TABLE operacao_usuario(
	cnpj NUMERIC(14),
	numero INTEGER, --mudei para integer pois com serial acho q ficaria errado
	data_de_contratacao DATE,
	situacao_da_operacao VARCHAR(20),
	FOREIGN KEY (cnpj) references usuario,
	FOREIGN KEY (numero) references operacao,
	PRIMARY KEY (cnpj, numero)
);

CREATE TABLE financeira(--FINANCEIRA EXISTE APENAS EM PRE-EMBARQUE// 
    cnpj_financeira NUMERIC(14) PRIMARY KEY,
	instituicao_financeira_credenciada VARCHAR(30)
);

CREATE TABLE operacao_financiamento(--no caso do pos embarque, nao utlizamos esta tabela?
    numero INTEGER,  --mudei pois achava q serial estava errado
 	cnpj_financeira NUMERIC(14),
	FOREIGN KEY (numero) references operacao,
    FOREIGN KEY (cnpj_financeira) references financeira,
	PRIMARY KEY(numero, cnpj_financeira)
);