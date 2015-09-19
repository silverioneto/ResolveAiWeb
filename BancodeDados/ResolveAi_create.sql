-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2015-09-07 14:30:14.278




-- tables
-- Table Agenda
CREATE TABLE Agenda (
    _id int    NOT NULL  AUTO_INCREMENT,
    periodo_agenda varchar(20)    NOT NULL ,
    data_agenda date NOT NULL,
    ordem_servico_id int    NOT NULL ,
    cliente_id int    NOT NULL ,
    funcionario_id int    NOT NULL ,
    CONSTRAINT Agenda_pk PRIMARY KEY (_id)
);

-- Table cliente
CREATE TABLE cliente (
    _id int    NOT NULL  AUTO_INCREMENT,
    cpf_cliente varchar(11)    NULL ,
    cnpj_cliente varchar(14)    NULL ,
    tel_cliente varchar(20)    NULL ,
    cel_cliente varchar(20)    NULL ,
    endereco_cliente varchar(50)    NULL ,
    users_uid int(11)    NOT NULL ,
    CONSTRAINT cliente_pk PRIMARY KEY (_id)
);

-- Table funcionario
CREATE TABLE funcionario (
    _id int    NOT NULL  AUTO_INCREMENT,
    nome_func varchar(40)    NULL ,
    login_func varchar(20)    NOT NULL ,
    encrypted_password varchar(80)    NOT NULL ,
    acesso_total char(1)    NULL ,
    email_func varchar(30)    NULL ,
    ultimo_acesso timestamp    NULL ,
    CONSTRAINT funcionario_pk PRIMARY KEY (_id)
);

-- Table ordem_servico
CREATE TABLE ordem_servico (
    _id int    NOT NULL ,
    id_func int    NOT NULL ,
    id_cliente int    NULL ,
    tipo_equip_os varchar(30)    NULL ,
    ident_equip_os varchar(50)    NOT NULL ,
    descri_equip_os varchar(50)    NOT NULL ,
    defeito_equip_os varchar(50)    NOT NULL ,
    solucao_equip_os varchar(50)    NOT NULL ,
    data_entrada_os timestamp    NOT NULL ,
    data_saida_os timestamp    NOT NULL ,
    situacao_os varchar(50)    NOT NULL ,
    previsao_os timestamp    NOT NULL ,
    valor_total_os decimal(10,2)    NOT NULL ,
    status_os varchar(20)    NOT NULL ,
    descri_serv_os varchar(30)    NOT NULL ,
    valor_serv_os decimal(10,2)    NOT NULL ,
    CONSTRAINT ordem_servico_pk PRIMARY KEY (_id)
);

-- Table ticket
CREATE TABLE ticket (
    _id int    NOT NULL  AUTO_INCREMENT,
    id_cliente int    NULL ,
    id_func int    NULL ,
    assunto varchar(20)    NULL ,
    mensagem varchar(100)    NULL ,
    data timestamp    NULL ,
    CONSTRAINT ticket_pk PRIMARY KEY (_id)
);

-- Table users
CREATE TABLE users (
    uid int(11)    NOT NULL  AUTO_INCREMENT,
    unique_id varchar(23)    NOT NULL ,
    name varchar(50)    NOT NULL ,
    email varchar(100)    NOT NULL ,
    encrypted_password varchar(80)    NOT NULL ,
    salt varchar(10)    NOT NULL ,
    created_at datetime    NULL ,
    updated_at datetime    NULL ,
    UNIQUE INDEX AK_0 (unique_id),
    UNIQUE INDEX AK_1 (email),
    CONSTRAINT users_pk PRIMARY KEY (uid)
);





-- foreign keys
-- Reference:  Agenda_cliente (table: Agenda)


ALTER TABLE Agenda ADD CONSTRAINT Agenda_cliente FOREIGN KEY Agenda_cliente (cliente_id)
    REFERENCES cliente (_id);
-- Reference:  Agenda_funcionario (table: Agenda)


ALTER TABLE Agenda ADD CONSTRAINT Agenda_funcionario FOREIGN KEY Agenda_funcionario (funcionario_id)
    REFERENCES funcionario (_id);
-- Reference:  Agenda_ordem_servico (table: Agenda)


ALTER TABLE Agenda ADD CONSTRAINT Agenda_ordem_servico FOREIGN KEY Agenda_ordem_servico (ordem_servico_id)
    REFERENCES ordem_servico (_id);
-- Reference:  cliente_users (table: cliente)


ALTER TABLE cliente ADD CONSTRAINT cliente_users FOREIGN KEY cliente_users (users_uid)
    REFERENCES users (uid);
-- Reference:  fk_cliente_ticket (table: ticket)


ALTER TABLE ticket ADD CONSTRAINT fk_cliente_ticket FOREIGN KEY fk_cliente_ticket (id_cliente)
    REFERENCES cliente (_id)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT;
-- Reference:  fk_fk_funcionario_os (table: ordem_servico)


ALTER TABLE ordem_servico ADD CONSTRAINT fk_fk_funcionario_os FOREIGN KEY fk_fk_funcionario_os (id_func)
    REFERENCES funcionario (_id)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT;
-- Reference:  fk_funcionario_ticket (table: ticket)


ALTER TABLE ticket ADD CONSTRAINT fk_funcionario_ticket FOREIGN KEY fk_funcionario_ticket (id_func)
    REFERENCES funcionario (_id)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT;
-- Reference:  fk_os_cliente (table: ordem_servico)


ALTER TABLE ordem_servico ADD CONSTRAINT fk_os_cliente FOREIGN KEY fk_os_cliente (id_cliente)
    REFERENCES cliente (_id)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT;



-- End of file.

