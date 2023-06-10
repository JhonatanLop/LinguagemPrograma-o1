create table if not exists public.lugar(
    lg_id SERIAL PRIMARY KEY,
    nome varchar not null,
    pais varchar null,
    estado varchar null,
    cidade varchar null,
    planejamentoT boolean,
    cep int null,
    cafe boolean,
    num_banheiros int check (num_banheiros >= 1),
    num_hospedes INT CHECK (num_hospedes >= 1),
    num_quartos INT CHECK (num_quartos >= 1),
    wifi_free boolean,
    pet_permission boolean
);

create table if not exists public.passageiro(
    psg_id SERIAL PRIMARY KEY,
    nome varchar not null,
    cpf int null,
    telefone int null,
    nascimento date null,
    email varchar unique,
    senha varchar not null,
    cep int null,
    logradouto varchar null,
    numero varchar null,
    complemento varchar null,
    bairro varchar null,
    municipio varchar null,
    estado varchar null
);

create table if not exists public.veiculo(
    vc_id SERIAL PRIMARY KEY,
    marca varchar null,
    modelo varchar null,
    ano_fab date null,
    identificacao varchar null,
    num_chassi int not null unique,
    tipo varchar null,
    carroceria varchar null,
    num_passageiros int,
    espaco_carga numeric null,
    motorizacao varchar null,
    transmissao varchar null,
    consumo numeric null
);