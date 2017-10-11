-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE bolão (
valor da cota Texto(1),
numero de cotas Texto(1),
id Texto(1) PRIMARY KEY
)

CREATE TABLE participantes (
rg Texto(1) PRIMARY KEY,
nome Texto(1),
telefone Texto(1),
email Texto(1)
)

CREATE TABLE cota (
sim Texto(1),
nao Texto(1),
idrg Texto(1),
idbolao Texto(1)
)

CREATE TABLE cartao (
id Texto(1) PRIMARY KEY,
idjogo Texto(1),
datajogo Texto(1),
dataSorteio Texto(1),
numero Texto(1)
)

CREATE TABLE tipoJogo (
id Texto(1) PRIMARY KEY,
nome Texto(1),
numerodeconcurso Texto(1),
numeroinicial Texto(1),
numerofinal Texto(1),
data Texto(1)
)

CREATE TABLE PAGO (
rg Texto(1),
id Texto(1),
PRIMARY KEY(rg,id)
)

CREATE TABLE NUMEROS (
id Texto(1),
FOREIGN KEY(id) REFERENCES cartao (id),
FOREIGN KEY(id) REFERENCES bolão (id)
)

CREATE TABLE APOSTAS (
id Texto(1),
FOREIGN KEY(id) REFERENCES cartao (id)
)

