INSERT INTO cnae VALUES (1,'INDUSTRIA DE TRANSFORMACAO','C1011200', 'PRODUTOS ALIMENTICIOS', 'ABATE DE RESES');
INSERT into cnae VALUES (2,'AGROPECUARIA E PESCA', 'A0119900', 'AGROPECUARIA', 'CULT PLANTAS LAVOURA');
INSERT INTO cnae VALUES (3,'INDUSTRIA DE TRANSFORMACAO','C1530000', 'COURO, ARTEFATO E CALCADO', 'FABRICACAO DE CALCADOS');
INSERT INTO cnae VALUES (4,'INDUSTRIA DE TRANSFORMACAO','C2833000', 'MAQUINAS E EQUIPAMENTOS', 'FAB MAO EO P/AGRIC');
INSERT INTO cnae VALUES (5,'INDUSTRIA DE TRANSFORMACAO','C2110600', 'FARMOQUIMICO', 'FAB PRODUTOS FARMOQUIMICOS');
INSERT INTO cnae VALUES (6,'COMERCIO E SERVIÇOS','G4643500', 'COMERCIO', 'ATACADISTA DE CALCADOS');

INSERT INTO usuario VALUES (101203770001, 'MINERVA S.A', 'GRANDE', 'AREA DE INDUSTRIA E SERVICOS', 'SP');
INSERT INTO usuario VALUES (261160000000, 'FRUTIVITA S.A', 'PEQUENA', 'AREA DE INDUSTRIA E SERVIÇOS', 'PE');
INSERT INTO usuario VALUES (376328634823, 'CALCADOS CHICARONI', 'MEDIA', 'AREA DE INDUSTRIA E SERVIÇOS', 'SP');
INSERT INTO usuario VALUES (377397434894, 'KEPLER WEBER', 'GRANDE', 'AREA DE INDUSTRIA E SERVIÇOS', 'RS');
INSERT INTO usuario VALUES (456976558548, 'SANRISIL S.A', 'MEDIA', 'AREA DE INDUSTRIA E SERVIÇOS','SP');
INSERT INTO usuario VALUES (723867834682, 'MARCOPOLO S.A', 'GRANDE', 'AREA DE INDUSTRIA E SERVIÇOS','RS');
INSERT INTO usuario VALUES (144334566787, 'MAQUINAS JACTO S.A', 'GRANDE', 'AREA DE INDUSTRIA E SERVIÇOS', 'SP' );
INSERT INTO usuario VALUES (969854745474, 'SCHULZ S.A', 'GRANDE', 'AREA DE INDUSTRIA E SERVIÇOS', 'SC' );
INSERT INTO usuario VALUES (263432834845, 'VOLVO VEICULOS LTDA', 'GRANDE', 'AREA DE INDUSTRIA E SERVIÇOS' , 'PR');
INSERT INTO usuario VALUES (834865859329, 'PERFIPAR S.A', 'GRANDE', 'AREA DE INDUSTRIA E SERVIÇOS', 'PR');
INSERT INTO usuario VALUES (678634576958, 'A CARNEVALLI CIA LTDA', 'MEDIA', 'AREA DE INDUSTRIA E SERVIÇOS', 'SP' );
INSERT INTO usuario VALUES (253848493836,  'SOUTH SERVICE TRADING SA', 'GRANDE', 'AREA DE INDUSTRIA E SERVIÇOS', 'RS' );

INSERT INTO cliente VALUES (101203770001, 'PRIVADA', 'INDUSTRIA', 'ALIMENTO E BEBIDA', 3505500, 1, 'BARRETOS');
INSERT INTO cliente VALUES (261160000000, 'PRIVADA', 'AGROPECUARIA', 'AGROPECUARIA', 2611101, 2,'PETROLINA');
INSERT INTO cliente VALUES (376328634823, 'PRIVADA', 'INDUSTRIA', 'OUTRAS', 3516200, 3,'FRANCA');
INSERT INTO cliente VALUES (377397434894, 'PRIVADA', 'INDUSTRIA', 'MECANICA', 4314902, 4, 'PORTO ALEGRE' );
INSERT INTO cliente VALUES (456976558548, 'PRIVADA', 'INDUSTRIA', 'QUIMICA PETROQUIMICA', 3523107, 5, 'ITAQUAQUECETUBA');
INSERT INTO cliente VALUES (253848493836, 'PRIVADA', 'COMERCIO/SERVICOS', 'COMERCIO E SERVICOS', 4314902, 6,'PORTO ALEGRE');

INSERT INTO exportador VALUES (723867834682, 'INDUSTRIA/ FAB VEICULOS' );
INSERT INTO exportador VALUES (144334566787, 'INDUSTRIA/ FAB MAQUINAS' );
INSERT INTO exportador VALUES (969854745474, 'INDUSTRIA/ METALURGIA' );
INSERT INTO exportador VALUES (263432834845, 'INDUSTRIA/ FAB VEICULOS' );
INSERT INTO exportador VALUES (834865859329, 'INDUSTRIA/ METALURGIA' );
INSERT INTO exportador VALUES (678634576958, 'INDUSTRIA/ FAB MAQUINAS' );

INSERT INTO operacao VALUES (1,'RECURSOS LIVRES- FAT', 'REEMBOLSAVEL', 'INDIRETA');
INSERT INTO operacao VALUES (2,'RECURSOS LIVRES- FAT', 'REEMBOLSAVEL', 'INDIRETA');
INSERT INTO operacao VALUES (3,'RECURSOS LIVRES- FAT', 'REEMBOLSAVEL', 'INDIRETA');
INSERT INTO operacao VALUES (4,'RECURSOS LIVRES- FAT', 'REEMBOLSAVEL', 'INDIRETA');
INSERT INTO operacao VALUES (5,'RECURSOS LIVRES- FAT CAMBIAL', 'REEMBOLSAVEL', 'INDIRETA');
INSERT INTO operacao VALUES (6, 'FAT CAMBIAL', 'REEMBOLSAVEL', 'DIRETA');
INSERT INTO operacao VALUES (7, 'FAT CAMBIAL', 'REEMBOLSAVEL', 'DIRETA');
INSERT INTO operacao VALUES (8, 'FAT CAMBIAL', 'REEMBOLSAVEL', 'DIRETA');
INSERT INTO operacao VALUES (9, 'FAT CAMBIAL', 'REEMBOLSAVEL', 'DIRETA');
INSERT INTO operacao VALUES (10, 'FAT CAMBIAL', 'REEMBOLSAVEL', 'INDIRETA');
INSERT INTO operacao VALUES (11,'RECURSOS LIVRES- FAT', 'REEMBOLSAVEL', 'INDIRETA');
INSERT INTO operacao VALUES (12,'FAT CAMBIAL', 'REEMBOLSAVEL', 'DIRETA');
INSERT INTO operacao VALUES (13,'RECURSOS LIVRES- FAT CAMBIAL', 'REEMBOLSAVEL', 'INDIRETA');

INSERT INTO pre VALUES (1,'NAO', 7035625, 7028400,'PRE EMBARQUE - ESPECIAL');
INSERT INTO pre VALUES (2,'NAO', 496416, 485967,'PRE EMBARQUE - ESPECIAL');
INSERT INTO pre VALUES (3,'NAO', 120618, 120469,'PRE EMBARQUE');
INSERT INTO pre VALUES (4,'NAO', 1209517, 1208400,'PRE EMBARQUE - ESPECIAL');
INSERT INTO pre VALUES (5,'NAO', 5825563, 4838859,'PRE EMBARQUE');
INSERT INTO pre VALUES (11,'NAO', 688000, 650000,'PRE EMBARQUE');
INSERT INTO pre VALUES (13,'NAO', 8282050, 8474900,'PRE EMBARQUE');

INSERT INTO pos VALUES (6, 'SEGURO CREDITO/FGE/PESSOAL','EXPORTACAO DE BENS', 'TAXA DE JUROS EM MOEDA ESTRANGEIRA', 
'BOLIVIA', 'US$ COMPRA','BENS DE CAPITAL E DEMAIS OP', 'SUPPLIER', 'ENTE PRIVADO');
INSERT INTO pos VALUES (7, 'PESSOAL','EXPORTACAO DE BENS', 'TAXA DE JUROS EM MOEDA ESTRANGEIRA', 
'ARGENTINA', 'US$ COMPRA', 'BENS DE CAPITAL E DEMAIS OP', 'SUPPLIER', 'ENTE PRIVADO');
INSERT INTO pos VALUES (8, 'PESSOAL','EXPORTACAO DE BENS', 'TAXA DE JUROS EM MOEDA ESTRANGEIRA', 
'ESTADOS UNIDOS', 'US$ COMPRA', 'BENS DE CAPITAL E DEMAIS OP', 'SUPPLIER', 'ENTE PRIVADO');
INSERT INTO pos VALUES (9, 'SEGURO CREDITO/FGE/PESSOAL','EXPORTACAO DE BENS', 'TAXA DE JUROS EM MOEDA ESTRANGEIRA', 
'ARGENTINA', 'US$ COMPRA', 'BENS DE CAPITAL E DEMAIS OP', 'SUPPLIER', 'ENTE PRIVADO');
INSERT INTO pos VALUES (10, 'CCR / ALADI','EXPORTACAO DE BENS', 'TAXA DE JUROS EM MOEDA ESTRANGEIRA', 
'ARGENTINA', 'US$ COMPRA', 'BENS DE CAPITAL E DEMAIS OP', 'SUPPLIER', 'ENTE PRIVADO');
INSERT INTO pos VALUES (12, 'SEGURO CREDITO/FGE/PESSOAL','EXPORTACAO DE BENS', 'TAXA DE JUROS EM MOEDA ESTRANGEIRA', 
'MEXICO', 'US$ COMPRA', 'BENS DE CAPITAL E DEMAIS OP', 'SUPPLIER', 'ENTE PRIVADO');

INSERT INTO operacao_usuario VALUES (101203770001, 1, '2002-01-08', 'LIQUIDADA');
INSERT INTO operacao_usuario VALUES (261160000000, 2, '2002-01-09', 'LIQUIDADA');
INSERT INTO operacao_usuario VALUES (376328634823, 3, '2002-01-10', 'LIQUIDADA');
INSERT INTO operacao_usuario VALUES (377397434894, 4, '2002-01-14', 'LIQUIDADA');
INSERT INTO operacao_usuario VALUES (456976558548, 5, '2002-01-14', 'LIQUIDADA');
INSERT INTO operacao_usuario VALUES (723867834682, 6, '2002-01-04', 'LIQUIDADA');
INSERT INTO operacao_usuario VALUES (144334566787, 7, '2002-01-08', 'LIQUIDADA');
INSERT INTO operacao_usuario VALUES (969854745474, 8, '2002-01-08', 'LIQUIDADA');
INSERT INTO operacao_usuario VALUES (263432834845, 9, '2002-01-08', 'LIQUIDADA');
INSERT INTO operacao_usuario VALUES (834865859329, 10, '2002-01-09', 'LIQUIDADA');
INSERT INTO operacao_usuario VALUES (377397434894, 11, '2002-01-22', 'LIQUIDADA');
INSERT INTO operacao_usuario VALUES (678634576958, 12, '2002-08-23', 'LIQUIDADA');
INSERT INTO operacao_usuario VALUES (253848493836, 13, '2002-02-06', 'LIQUIDADA');

INSERT INTO financeira VALUES (47895743256788, 'BOSTON NEGOCIOS');
INSERT INTO financeira VALUES (76834483764367, 'BRADESCO FINANCIAMENTOS');
INSERT INTO financeira VALUES (76346733876783, 'BANCO FIBRA');
INSERT INTO financeira VALUES (45754985749767, 'BANCO UNICO');
INSERT INTO financeira VALUES (43654394394395, 'BANCO ABC BRASIL');
INSERT INTO financeira VALUES (32768338248737, 'BANCO ITAU BANK SA');


INSERT INTO operacao_financiamento VALUES (1, 47895743256788);
INSERT INTO operacao_financiamento VALUES(2, 76834483764367);
INSERT INTO operacao_financiamento VALUES(3, 76346733876783);
INSERT INTO operacao_financiamento VALUES(4, 45754985749767);
INSERT INTO operacao_financiamento VALUES(5, 43654394394395);
INSERT INTO operacao_financiamento VALUES(11, 76834483764367);
INSERT INTO operacao_financiamento VALUES(13, 32768338248737);
