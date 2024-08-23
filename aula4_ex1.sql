-- CREATE TABLE public.cliente ( 
-- 	id                   INTEGER   NOT NULL,
-- 	nome                 VARCHAR(100)   NOT NULL,
-- 	cod_cliente          VARCHAR(20)   NOT NULL,
-- 	cpf                  VARCHAR(20)   NOT NULL,
-- 	rg                   VARCHAR(20)   NOT NULL,
-- 	data_cadastro        DATE   ,
-- 	id_genero            INTEGER   ,
-- 	id_endereco          INTEGER   ,
-- 	CONSTRAINT pk_cliente_0 PRIMARY KEY ( id )
--  );
 
--  CREATE TABLE public.genero ( 
-- 	id                   INTEGER   NOT NULL,
-- 	nome                 VARCHAR(100)   NOT NULL,
-- 	CONSTRAINT pk_genero PRIMARY KEY ( id )
--  );
 
--  CREATE TABLE public.tipo_contato_cliente ( 
-- 	id                   INTEGER   NOT NULL,
-- 	descricao            VARCHAR(400)   ,
-- 	id_tipo_contato      INTEGER   NOT NULL,
-- 	id_cliente           INTEGER   NOT NULL,
-- 	CONSTRAINT pk_tipo_contato_cliente PRIMARY KEY ( id )
--  );

-- CREATE TABLE public.tipo_contato ( 
-- 	id                   INTEGER   NOT NULL,
-- 	nome                 VARCHAR(100)   ,
-- 	CONSTRAINT pk_tipo_contato PRIMARY KEY ( id )
--  );

-- CREATE TABLE public.endereco ( 
-- 	id                   INTEGER   NOT NULL,
-- 	logradouro           VARCHAR(200)   ,
-- 	cep                  VARCHAR(20)   ,
-- 	numero               VARCHAR(20)   ,
-- 	id_bairro            INTEGER   NOT NULL,
-- 	CONSTRAINT pk_endereco PRIMARY KEY ( id )
--  );

-- CREATE TABLE public.loja_cliente ( 
-- 	id                   INTEGER   NOT NULL,
-- 	id_cliente           INTEGER   NOT NULL,
-- 	id_loja              INTEGER   NOT NULL,
-- 	CONSTRAINT pk_loja_cliente PRIMARY KEY ( id )
--  );
 
--  CREATE TABLE public.loja ( 
-- 	id                   INTEGER   NOT NULL,
-- 	nome                 VARCHAR(100)   ,
-- 	cod_loja             VARCHAR(20)   ,
-- 	id_endereco          INTEGER   NOT NULL,
-- 	CONSTRAINT pk_loja PRIMARY KEY ( id )
--  );
 
--  CREATE TABLE public.bairro ( 
-- 	id                   INTEGER   NOT NULL,
-- 	nome                 VARCHAR(100)   ,
-- 	id_cidade            INTEGER   NOT NULL,
-- 	CONSTRAINT pk_bairro PRIMARY KEY ( id )
--  );

-- CREATE TABLE public.cidade ( 
-- 	id                   INTEGER   NOT NULL,
-- 	nome                 VARCHAR(100)   ,
-- 	id_estado            INTEGER   NOT NULL,
-- 	CONSTRAINT pk_cidade PRIMARY KEY ( id )
--  );
 
--  CREATE TABLE public.estado ( 
-- 	id                   INTEGER   NOT NULL,
-- 	nome                 VARCHAR(100)   ,
-- 	CONSTRAINT pk_estado PRIMARY KEY ( id )
--  );

-- ALTER TABLE public.cliente ADD CONSTRAINT fk_cliente_genero FOREIGN KEY ( id_genero ) REFERENCES public.genero( id ) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ALTER TABLE public.cliente ADD CONSTRAINT fk_cliente_endereco FOREIGN KEY ( id_endereco ) REFERENCES public.endereco( id ) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ALTER TABLE public.tipo_contato_cliente ADD CONSTRAINT fk_tipo_contato_cliente_cliente FOREIGN KEY ( id_cliente ) REFERENCES public.cliente( id ) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ALTER TABLE public.tipo_contato_cliente ADD CONSTRAINT fk_tipo_contato_cliente_tipo_contato FOREIGN KEY ( id_tipo_contato ) REFERENCES public.tipo_contato( id ) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ALTER TABLE public.endereco ADD CONSTRAINT fk_endereco_bairro FOREIGN KEY ( id_bairro ) REFERENCES public.bairro( id ) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ALTER TABLE public.loja_cliente ADD CONSTRAINT fk_loja_cliente_cliente FOREIGN KEY ( id_cliente ) REFERENCES public.cliente( id ) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ALTER TABLE public.loja_cliente ADD CONSTRAINT fk_loja_cliente_loja FOREIGN KEY ( id_loja ) REFERENCES public.loja( id ) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ALTER TABLE public.loja ADD CONSTRAINT fk_loja_endereco FOREIGN KEY ( id_endereco ) REFERENCES public.endereco( id ) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ALTER TABLE public.bairro ADD CONSTRAINT fk_bairro_cidade FOREIGN KEY ( id_cidade ) REFERENCES public.cidade( id ) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ALTER TABLE public.cidade ADD CONSTRAINT fk_cidade_estado FOREIGN KEY ( id_estado ) REFERENCES public.estado( id ) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- SELECT * FROM public.tipo_contato_cliente;
