USE Detran;

-- A) Apresentar todos os dados dos veículos de um determinado proprietário (informado pelo usuário através do CPF)
SELECT * FROM Veiculo WHERE cpf_proprietario = '12345678901';

-- B) Consultar proprietário(s) por qualquer parte do nome
SELECT * FROM Proprietario WHERE nome LIKE '%Silva%';

-- C) Mostrar os dados da infração e do veículo que tiveram infrações cadastradas no Detran em um período (ou data) no padrão DE... ATÉ...
SELECT * FROM Infracao 
INNER JOIN Veiculo ON Infracao.placa = Veiculo.placa 
WHERE data_hora BETWEEN '2023-01-01 00:00:00' AND '2023-12-31 23:59:59';

-- D) Pesquisar o número de veículos que foram cadastrados em cada modelo, ordenando pelo número de veículos em ordem decrescente
SELECT Modelo.descricao, COUNT(Veiculo.placa) AS numero_de_veiculos 
FROM Veiculo 
INNER JOIN Modelo ON Veiculo.id_modelo = Modelo.id_modelo 
GROUP BY Modelo.descricao 
ORDER BY numero_de_veiculos DESC;
