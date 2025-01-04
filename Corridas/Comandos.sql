Select * From Objetivo,Prova,treino,Corredor;

SELECT * 
FROM corredor 
WHERE idade > 25 AND nivel_experiencia = 'Avançado';

SELECT * 
FROM corredor 
WHERE peso < 70 AND altura >= 1.70;

-- ORDER BY 

SELECT * FROM OBJETIVO;

SELECT * 
FROM objetivo 
ORDER BY prazo ASC;

SELECT * 
FROM objetivo 
ORDER BY status ASC, meta DESC;

-- HAVING Statement

Select * From Treino;

SELECT tipo_treino, AVG(distancia) AS media_distancia
FROM treino
GROUP BY tipo_treino
HAVING AVG(distancia) > 8;

SELECT id_corredor, SUM(distancia) AS total_distancia
FROM treino
GROUP BY id_corredor
HAVING SUM(distancia) > 10;

SELECT tipo_treino, AVG(TIME_TO_SEC(tempo)) / 60 AS media_tempo_min
FROM treino
GROUP BY tipo_treino
HAVING AVG(TIME_TO_SEC(tempo)) / 60 < 30;












