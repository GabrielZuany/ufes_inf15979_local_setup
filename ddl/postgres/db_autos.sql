-- Adminer 5.3.0 PostgreSQL 16.9 dump

\connect "db_autos";

DROP TABLE IF EXISTS "automoveis";
CREATE TABLE "public"."automoveis" (
    "codigo" integer NOT NULL,
    "ano" integer NOT NULL,
    "fabricante" character varying(45),
    "modelo" character varying(45),
    "preco_tabela" numeric(10,2),
    "pais" character varying(45),
    CONSTRAINT "automoveis_pkey" PRIMARY KEY ("codigo", "ano")
)
WITH (oids = false);

INSERT INTO "automoveis" ("codigo", "ano", "fabricante", "modelo", "preco_tabela", "pais") VALUES
(1,	2017,	'Honda',	'Civic',	124000.00,	'Japão'),
(2,	2015,	'Honda',	'Fit',	56554.00,	'Japão'),
(3,	2013,	'Honda',	'City',	43850.00,	'Japão'),
(4,	2016,	'Honda',	'HR-V',	87886.00,	'Japão'),
(5,	2009,	'Fiat',	'Palio',	23338.00,	'Itália'),
(6,	2012,	'Fiat',	'Uno',	26049.00,	'Itália'),
(7,	2013,	'Fiat',	'Punto',	44216.00,	'Itália'),
(8,	2017,	'Fiat',	'Argo',	70600.00,	'Itália'),
(9,	2015,	'Fiat',	'Weekend',	47820.00,	'Itália'),
(10,	1998,	'Fiat',	'Bravo',	7186.00,	'Itália'),
(11,	2016,	'Fiat',	'Toro',	105719.00,	'Itália'),
(12,	1995,	'Volkswagen',	'Gol',	12996.00,	'Alemanha'),
(13,	2000,	'Volkswagen',	'Gol',	21695.00,	'Alemanha'),
(14,	2004,	'Volkswagen',	'Gol',	15197.00,	'Alemanha'),
(15,	2011,	'Volkswagen',	'Gol',	26358.00,	'Alemanha'),
(16,	2009,	'Volkswagen',	'Fox',	23976.00,	'Alemanha'),
(17,	2011,	'Volkswagen',	'Fox',	28000.00,	'Alemanha'),
(18,	2004,	'Volkswagen',	'Fox',	17202.00,	'Alemanha'),
(19,	2014,	'Volkswagen',	'Golf',	94127.00,	'Alemanha'),
(20,	2004,	'Volkswagen',	'Golf',	24668.00,	'Alemanha'),
(21,	1998,	'Volkswagen',	'Saveiro',	12359.00,	'Alemanha'),
(22,	1999,	'Volkswagen',	'Saveiro',	14601.00,	'Alemanha'),
(23,	2012,	'Volkswagen',	'Voyage',	28852.00,	'Alemanha'),
(24,	2017,	'Toyota',	'Corolla',	108000.00,	'Japão'),
(25,	2016,	'Toyota',	'Corolla',	82022.00,	'Japão'),
(26,	2007,	'Toyota',	'Corolla',	30356.00,	'Japão'),
(27,	2016,	'Toyota',	'Hilux',	160992.00,	'Japão'),
(28,	2011,	'Toyota',	'Hilux',	91328.00,	'Japão'),
(29,	2013,	'Nissan',	'Sentra',	39467.00,	'Japão'),
(30,	2010,	'Nissan',	'Sentra',	31717.00,	'Japão'),
(31,	2017,	'Nissan',	'Kicks',	92340.00,	'Japão'),
(32,	2012,	'Nissan',	'March',	25490.00,	'Japão'),
(33,	2014,	'Nissan',	'March',	30345.00,	'Japão'),
(34,	2017,	'Chevrolet',	'Onix',	62590.00,	'EUA'),
(35,	2016,	'Chevrolet',	'Onix',	48703.00,	'EUA'),
(36,	2015,	'Chevrolet',	'Onix',	42059.00,	'EUA'),
(37,	2014,	'Chevrolet',	'Onix',	39545.00,	'EUA'),
(38,	2015,	'Chevrolet',	'Cruze',	63583.00,	'EUA'),
(39,	2013,	'Chevrolet',	'Cruze',	51498.00,	'EUA'),
(40,	2015,	'Chevrolet',	'Camaro',	188042.00,	'EUA'),
(41,	1995,	'Chevrolet',	'Camaro',	84043.00,	'EUA'),
(42,	2003,	'Ford',	'Ecosport',	19841.00,	'EUA'),
(43,	2008,	'Ford',	'Ecosport',	26769.00,	'EUA'),
(44,	1997,	'Ford',	'Ka',	6551.00,	'EUA'),
(45,	2006,	'Ford',	'Ka',	15701.00,	'EUA'),
(46,	2014,	'Ford',	'Focus',	65144.00,	'EUA'),
(47,	2011,	'Ford',	'Focus',	37702.00,	'EUA'),
(48,	2013,	'Hyundai',	'HB20',	38472.00,	'Coréia'),
(49,	2016,	'Hyundai',	'HB20',	56210.00,	'Coréia'),
(50,	1975,	'Puma',	'GTE',	NULL,	'Brasil');

DROP TABLE IF EXISTS "consumidores";
CREATE TABLE "public"."consumidores" (
    "cpf" integer NOT NULL,
    "nome" character varying(45),
    "sobrenome" character varying(45),
    "cidade" character varying(45),
    "estado" character varying(2),
    CONSTRAINT "consumidores_pkey" PRIMARY KEY ("cpf")
)
WITH (oids = false);

INSERT INTO "consumidores" ("cpf", "nome", "sobrenome", "cidade", "estado") VALUES
(1111,	'Sérgio',	'Chagas',	'Vitória',	'ES'),
(1234,	'Carlos Alberto',	'Teixeira',	'Belo Horizonte',	'MG'),
(2222,	'Daniela',	'Liu',	'São Paulo',	'SP'),
(3333,	'Cláudia',	'Linhares',	'Vila Velha',	'ES'),
(3429,	'Lírio Mário',	'da Costa',	'Rio de Janeiro',	'RJ'),
(3725,	'Antônio Carlos',	'Bernardes Gomes',	'Lins de Vasconcelos',	'RJ'),
(4444,	'André',	'Costa',	'Contagem',	'MG'),
(4629,	'Mauro',	'Faccio Gonçalves',	'Sete Lagoas',	'MG'),
(5628,	'Chico',	'Anísio',	'Maranguape',	'CE'),
(5729,	'Rogério',	'Cardoso',	'São Paulo',	'SP'),
(6666,	'Pedro',	'Gonçalves',	'Rio de Janeiro',	'RJ'),
(6780,	'Renato',	'Aragão',	'Sobral',	'CE'),
(7462,	'José Abelardo',	'Barbosa de Medeiros',	'Surubim',	'PE'),
(7777,	'Augusto',	'Morelli',	'Niterói',	'RJ'),
(8888,	'Amácio',	'Mazzaropi',	'São Paulo',	'SP'),
(9999,	'Sebastião',	'Bernardes de Souza Prata',	'Uberlândia',	'MG');

DROP TABLE IF EXISTS "garagens";
CREATE TABLE "public"."garagens" (
    "codigo" integer NOT NULL,
    "ano" integer NOT NULL,
    "cgc" integer NOT NULL,
    "quantidades" integer,
    CONSTRAINT "garagens_pkey" PRIMARY KEY ("codigo", "ano", "cgc")
)
WITH (oids = false);

INSERT INTO "garagens" ("codigo", "ano", "cgc", "quantidades") VALUES
(1,	2017,	1111,	2),
(2,	2015,	1111,	4),
(3,	2013,	1111,	1),
(4,	2016,	1111,	0),
(5,	2009,	1111,	8),
(6,	2012,	1111,	3),
(7,	2013,	2222,	7),
(8,	2017,	2222,	1),
(9,	2015,	2222,	3),
(10,	1998,	3333,	2),
(11,	2016,	3333,	1),
(12,	1995,	3333,	2),
(13,	2000,	5555,	1),
(14,	2004,	5555,	0),
(15,	2011,	5555,	2),
(16,	2009,	6666,	3),
(17,	2011,	6666,	1),
(18,	2004,	6666,	6),
(19,	2014,	6666,	1),
(21,	1998,	8888,	4),
(22,	1999,	8888,	8),
(23,	2012,	8888,	2),
(24,	2017,	9999,	10),
(26,	2007,	2222,	3),
(28,	2011,	2222,	5),
(29,	2013,	3333,	2),
(31,	2017,	1111,	2),
(32,	2012,	6666,	1),
(34,	2017,	7777,	2),
(35,	2016,	6666,	6),
(37,	2014,	8888,	9),
(38,	2015,	1234,	2),
(39,	2013,	1234,	7),
(40,	2015,	1234,	1),
(41,	1995,	1234,	0),
(43,	2008,	1234,	3),
(44,	1997,	1234,	2),
(46,	2014,	9999,	4),
(47,	2011,	9999,	1),
(49,	2016,	7777,	2);

DROP TABLE IF EXISTS "negocios";
CREATE TABLE "public"."negocios" (
    "codigo" integer NOT NULL,
    "ano" integer NOT NULL,
    "cgc" integer NOT NULL,
    "cpf" integer NOT NULL,
    "data" date,
    "preco" numeric(10,2),
    CONSTRAINT "negocios_pkey" PRIMARY KEY ("codigo", "ano", "cgc", "cpf")
)
WITH (oids = false);

INSERT INTO "negocios" ("codigo", "ano", "cgc", "cpf", "data", "preco") VALUES
(4,	2016,	1111,	1234,	'2017-04-03',	90000.00),
(7,	2013,	2222,	4444,	'2016-12-06',	42000.00),
(8,	2017,	1111,	5628,	'2017-06-07',	70000.00),
(13,	2000,	4444,	3725,	'2015-12-01',	22000.00),
(15,	2011,	6666,	6666,	'2015-03-21',	16000.00),
(23,	2012,	7777,	6666,	'2014-07-08',	30000.00),
(28,	2011,	8888,	7462,	'2017-01-03',	97000.00),
(29,	2013,	3333,	8888,	'2013-01-09',	33000.00),
(29,	2013,	4444,	7777,	'2013-01-08',	32500.00),
(36,	2015,	1111,	7462,	'2016-04-05',	NULL);

DROP TABLE IF EXISTS "revendedoras";
CREATE TABLE "public"."revendedoras" (
    "cgc" integer NOT NULL,
    "nome" character varying(45),
    "proprietario" character varying(45),
    "estado" character varying(2),
    "cidade" character varying(45),
    CONSTRAINT "revendedoras_pkey" PRIMARY KEY ("cgc")
)
WITH (oids = false);

INSERT INTO "revendedoras" ("cgc", "nome", "proprietario", "estado", "cidade") VALUES
(1111,	'Sayonara Motors',	'Ryu',	'ES',	'Vitória'),
(1234,	'Dictator Motors',	'M. Bison',	'BA',	'Salvador'),
(2222,	'Asia Motors',	'Bruce Lee',	'RJ',	'Rio de Janeiro'),
(3333,	'American Motors',	'Ken Masters',	'SP',	'São Paulo'),
(4444,	'Sumô Motors',	'Edmond Honda',	'SP',	'Campinas'),
(5555,	'China Motors',	'Chun-Li',	'RJ',	'Niterói'),
(6666,	'Warrior Motors',	'Edmond Honda',	'RJ',	'Rio de Janeiro'),
(7777,	'Samba Motors',	'Blanka',	'ES',	'Vila Velha'),
(8888,	'Red Motors',	'Zangief',	'MG',	'Belo Horizonte'),
(9999,	'Thai Motors',	'Sagat',	'MG',	'Contagem');

ALTER TABLE ONLY "public"."garagens" ADD CONSTRAINT "fk_cgc_garagens" FOREIGN KEY (cgc) REFERENCES revendedoras(cgc) NOT DEFERRABLE;
ALTER TABLE ONLY "public"."garagens" ADD CONSTRAINT "fk_codigo_ano_garagens" FOREIGN KEY (codigo, ano) REFERENCES automoveis(codigo, ano) NOT DEFERRABLE;

ALTER TABLE ONLY "public"."negocios" ADD CONSTRAINT "fk_cgc_negocios" FOREIGN KEY (cgc) REFERENCES revendedoras(cgc) NOT DEFERRABLE;
ALTER TABLE ONLY "public"."negocios" ADD CONSTRAINT "fk_codigo_ano_negocios" FOREIGN KEY (codigo, ano) REFERENCES automoveis(codigo, ano) NOT DEFERRABLE;
ALTER TABLE ONLY "public"."negocios" ADD CONSTRAINT "fk_cpf_negocios" FOREIGN KEY (cpf) REFERENCES consumidores(cpf) NOT DEFERRABLE;

-- 2025-06-13 02:38:54 UTC