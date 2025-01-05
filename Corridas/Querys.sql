use Corridas;

Select * From Prova;

-- saber quantos não são nulos
Select count(*) From Prova distancia where distancia is not null;

SELECT a.nome_prova, a2.colocacao, COUNT(*) AS total_participantes
FROM Prova a
INNER JOIN Prova a2 ON a.id_prova = a2.id_prova
GROUP BY a.nome_prova, a2.colocacao
ORDER BY a.nome_prova ASC;
