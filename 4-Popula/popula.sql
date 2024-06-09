USE Detran;

-- Populando Proprietário
INSERT INTO Proprietario (cpf, nome, endereco, bairro, cidade, estado, telefones, sexo, data_nascimento, idade) VALUES 
('12345678901', 'João Silva', 'Rua A, 123', 'Centro', 'São Paulo', 'SP', '1111-1111', 'M', '1980-01-01', 44),
('98765432100', 'Maria Souza', 'Avenida B, 456', 'Bairro B', 'Rio de Janeiro', 'RJ', '2222-2222', 'F', '1975-05-15', 49),
('11122233344', 'Carlos Pereira', 'Travessa C, 789', 'Bairro C', 'Belo Horizonte', 'MG', '3333-3333', 'M', '1990-10-30', 33),
('55566677788', 'Ana Costa', 'Alameda D, 101', 'Bairro D', 'Curitiba', 'PR', '4444-4444', 'F', '1985-03-22', 39),
('99988877766', 'Pedro Almeida', 'Rua E, 202', 'Bairro E', 'Porto Alegre', 'RS', '5555-5555', 'M', '1995-07-07', 28);

-- Populando Modelo
INSERT INTO Modelo (id_modelo, descricao) VALUES 
(100001, 'GOL MI'),
(100002, 'GOL 1.8'),
(100003, 'UNO CS'),
(100004, 'PALIO 1.0'),
(100005, 'CORSA SEDAN');

-- Populando Categoria
INSERT INTO Categoria (id_categoria, descricao) VALUES 
(10, 'AUTOMÓVEL'),
(11, 'MOTOCICLETA'),
(12, 'CAMINHÃO'),
(13, 'ÔNIBUS'),
(14, 'VAN');

-- Populando Veiculo
INSERT INTO Veiculo (placa, chassi, cor, id_modelo, id_categoria, ano_fabricacao, cpf_proprietario) VALUES 
('AAA1111', '9BWZZZ377VT004251', 'Branco', 100001, 10, 2015, '12345678901'),
('BBB2222', '9BWZZZ377VT004252', 'Preto', 100002, 10, 2017, '98765432100'),
('CCC3333', '9BWZZZ377VT004253', 'Vermelho', 100003, 10, 2018, '11122233344'),
('DDD4444', '9BWZZZ377VT004254', 'Azul', 100004, 11, 2016, '55566677788'),
('EEE5555', '9BWZZZ377VT004255', 'Verde', 100005, 12, 2019, '99988877766');

-- Populando Tipo de Infração
INSERT INTO TipoInfracao (id_tipo_infracao, descricao, valor) VALUES 
(1, 'AVANÇO DE SINAL VERMELHO', 200.00),
(2, 'PARADA SOBRE A FAIXA DE PEDESTRES', 150.00),
(3, 'EXCESSO DE VELOCIDADE', 250.00),
(4, 'USO DE CELULAR AO VOLANTE', 100.00),
(5, 'ESTACIONAMENTO IRREGULAR', 50.00);

-- Populando Local
INSERT INTO Local (latitude, longitude, velocidade_permitida) VALUES 
(-23.550520, -46.633308, 60),
(-22.906847, -43.172896, 50),
(-19.916681, -43.934493, 70),
(-25.428954, -49.267137, 40),
(-30.034647, -51.217658, 80);

-- Populando Agente de Trânsito
INSERT INTO AgenteTransito (matricula, nome, data_contratacao, tempo_servico) VALUES 
(1001, 'Agente A', '2010-01-01', 170),
(1002, 'Agente B', '2012-05-15', 140),
(1003, 'Agente C', '2015-10-30', 100),
(1004, 'Agente D', '2018-03-22', 70),
(1005, 'Agente E', '2020-07-07', 40);

-- Populando Infração
INSERT INTO Infracao (id_infracao, placa, data_hora, id_tipo_infracao, latitude, longitude, velocidade_aferida, matricula_agente) VALUES 
(1, 'AAA1111', '2023-01-01 10:00:00', 1, -23.550520, -46.633308, NULL, 1001),
(2, 'BBB2222', '2023-02-15 11:30:00', 2, -22.906847, -43.172896, NULL, 1002),
(3, 'CCC3333', '2023-03-10 14:45:00', 3, -19.916681, -43.934493, 85, 1003),
(4, 'DDD4444', '2023-04-05 16:00:00', 4, -25.428954, -49.267137, NULL, 1004),
(5, 'EEE5555', '2023-05-20 18:15:00', 5, -30.034647, -51.217658, NULL, 1005);
