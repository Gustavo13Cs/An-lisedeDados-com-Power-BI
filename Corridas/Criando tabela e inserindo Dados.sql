use Corridas;

CREATE TABLE Corredor (
    id_corredor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    peso DECIMAL(5,2),
    altura DECIMAL(4,2),
    nivel_experiencia ENUM('Iniciante', 'Intermediário', 'Avançado') default "Iniciante"
);

CREATE TABLE Treino (
    id_treino INT AUTO_INCREMENT PRIMARY KEY,
    id_corredor INT NOT NULL,
    tipo_treino ENUM("Intervalado", "Longo", "Regenerativo") default "Longo",
    distancia DECIMAL(5,2) NOT NULL,
    tempo TIME NOT NULL,
    ritmo DECIMAL(5,2),
    data DATE NOT NULL,
    CONSTRAINT fk_treino_corredor FOREIGN KEY (id_corredor) REFERENCES Corredor(id_corredor)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

CREATE TABLE Prova (
    id_prova INT AUTO_INCREMENT PRIMARY KEY,
    id_corredor INT NOT NULL,
    nome_prova VARCHAR(100) NOT NULL,
    distancia DECIMAL(5,2) NOT NULL,
    data DATE NOT NULL,
    tempo_final TIME,
    colocacao INT,
    CONSTRAINT fk_prova_corredor FOREIGN KEY (id_corredor) REFERENCES Corredor(id_corredor)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

CREATE TABLE Objetivo (
    id_objetivo INT AUTO_INCREMENT PRIMARY KEY,
    id_corredor INT NOT NULL,
    tipo_objetivo ENUM('Tempo', 'Distância', 'Frequência') NOT NULL default "Tempo",
    meta DECIMAL(5,2) NOT NULL,
    prazo DATE NOT NULL,
    status ENUM('Em andamento', 'Concluído', 'Não alcançado') NOT NULL default "Em andamento",
    CONSTRAINT fk_objetivo_corredor FOREIGN KEY (id_corredor) REFERENCES Corredor(id_corredor)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

Select * From Corredor;

INSERT INTO Corredor (nome, idade, peso, altura, nivel_experiencia)
VALUES ('João Silva', 25, 72.5, 1.75, 'Intermediário');

INSERT INTO Corredor (nome, idade, peso, altura, nivel_experiencia)
VALUES ('Maria Oliveira', 30, 65.3, 1.68, 'Avançado');

INSERT INTO Corredor (nome, idade, peso, altura, nivel_experiencia)
VALUES ('Carlos Santos', 22, 78.2, 1.80, 'Iniciante');

INSERT INTO Corredor (nome, idade, peso, altura, nivel_experiencia)
VALUES ('Ana Costa', 28, 58.7, 1.60, 'Intermediário');

INSERT INTO Corredor (nome, idade, peso, altura, nivel_experiencia)
VALUES ('Lucas Pereira', 35, 85.0, 1.85, 'Avançado');

INSERT INTO Corredor (nome, idade, peso, altura, nivel_experiencia)
VALUES ('Fernanda Lima', 27, 62.4, 1.70, 'Iniciante');

INSERT INTO Corredor (nome, idade, peso, altura, nivel_experiencia)
VALUES ('Bruno Almeida', 24, 68.0, 1.72, 'Intermediário');

INSERT INTO Corredor (nome, idade, peso, altura, nivel_experiencia)
VALUES ('Larissa Souza', 29, 70.5, 1.67, 'Avançado');

INSERT INTO Corredor (nome, idade, peso, altura, nivel_experiencia)
VALUES ('Gabriel Rocha', 32, 76.3, 1.78, 'Iniciante');

INSERT INTO Corredor (nome, idade, peso, altura, nivel_experiencia)
VALUES ('Juliana Mendes', 26, 60.0, 1.65, 'Intermediário');

Select * From Corredor;

INSERT INTO Treino (id_corredor, tipo_treino, distancia, tempo, ritmo, data)
VALUES (1, 'Intervalado', 5.0, '00:25:00', 5.0, '2025-01-01');

INSERT INTO Treino (id_corredor, tipo_treino, distancia, tempo, ritmo, data)
VALUES (2, 'Longo', 10.0, '00:50:00', 5.0, '2025-01-02');

INSERT INTO Treino (id_corredor, tipo_treino, distancia, tempo, ritmo, data)
VALUES (3, 'Regenerativo', 3.0, '00:20:00', 6.7, '2025-01-03');

INSERT INTO Treino (id_corredor, tipo_treino, distancia, tempo, ritmo, data)
VALUES (4, 'Intervalado', 7.0, '00:35:00', 5.0, '2025-01-04');

INSERT INTO Treino (id_corredor, tipo_treino, distancia, tempo, ritmo, data)
VALUES (5, 'Longo', 15.0, '01:15:00', 5.0, '2025-01-05');

INSERT INTO Treino (id_corredor, tipo_treino, distancia, tempo, ritmo, data)
VALUES (6, 'Intervalado', 4.0, '00:22:00', 5.5, '2025-01-06');

INSERT INTO Treino (id_corredor, tipo_treino, distancia, tempo, ritmo, data)
VALUES (7, 'Regenerativo', 6.0, '00:36:00', 6.0, '2025-01-07');

INSERT INTO Treino (id_corredor, tipo_treino, distancia, tempo, ritmo, data)
VALUES (8, 'Longo', 12.0, '01:02:00', 5.2, '2025-01-08');

INSERT INTO Treino (id_corredor, tipo_treino, distancia, tempo, ritmo, data)
VALUES (9, 'Intervalado', 8.0, '00:40:00', 5.0, '2025-01-09');

INSERT INTO Treino (id_corredor, tipo_treino, distancia, tempo, ritmo, data)
VALUES (10, 'Regenerativo', 5.0, '00:30:00', 6.0, '2025-01-10');

INSERT INTO Prova (id_corredor, nome_prova, distancia, data, tempo_final, colocacao)
VALUES (1, 'Corrida de São Silvestre', 15.0, '2025-01-15', '01:10:00', 25);

INSERT INTO Prova (id_corredor, nome_prova, distancia, data, tempo_final, colocacao)
VALUES (2, 'Meia Maratona do Sol', 21.1, '2025-02-10', '01:45:00', 15);

INSERT INTO Prova (id_corredor, nome_prova, distancia, data, tempo_final, colocacao)
VALUES (3, 'Corrida dos Campeões', 10.0, '2025-03-05', '00:48:00', 8);

INSERT INTO Prova (id_corredor, nome_prova, distancia, data, tempo_final, colocacao)
VALUES (4, 'Maratona de Aracaju', 42.2, '2025-03-25', '03:50:00', 50);

INSERT INTO Prova (id_corredor, nome_prova, distancia, data, tempo_final, colocacao)
VALUES (5, 'Corrida Noturna', 5.0, '2025-04-15', '00:22:00', 3);

INSERT INTO Prova (id_corredor, nome_prova, distancia, data, tempo_final, colocacao)
VALUES (6, 'Desafio das Trilhas', 12.0, '2025-05-10', '01:05:00', 12);

INSERT INTO Prova (id_corredor, nome_prova, distancia, data, tempo_final, colocacao)
VALUES (7, 'Corrida Solidária', 8.0, '2025-06-20', '00:40:00', 10);

INSERT INTO Prova (id_corredor, nome_prova, distancia, data, tempo_final, colocacao)
VALUES (8, 'Desafio do Sertão', 25.0, '2025-07-05', '02:15:00', 18);

INSERT INTO Prova (id_corredor, nome_prova, distancia, data, tempo_final, colocacao)
VALUES (9, 'Corrida das Águas', 10.0, '2025-08-12', '00:50:00', 20);

INSERT INTO Prova (id_corredor, nome_prova, distancia, data, tempo_final, colocacao)
VALUES (10, 'Corrida pela Paz', 7.0, '2025-09-18', '00:35:00', 5);

INSERT INTO Objetivo (id_corredor, tipo_objetivo, meta, prazo, status)
VALUES (1, 'Tempo', 45.00, '2025-03-01', 'Em andamento');

INSERT INTO Objetivo (id_corredor, tipo_objetivo, meta, prazo, status)
VALUES (2, 'Distância', 21.10, '2025-06-01', 'Concluido');

INSERT INTO Objetivo (id_corredor, tipo_objetivo, meta, prazo, status)
VALUES (3, 'Tempo', 20.00, '2025-04-10', 'Em andamento');

INSERT INTO Objetivo (id_corredor, tipo_objetivo, meta, prazo, status)
VALUES (4, 'Distância', 42.20, '2025-09-01', 'Concluido');

INSERT INTO Objetivo (id_corredor, tipo_objetivo, meta, prazo, status)
VALUES (5, 'Frequência', 5.00, '2025-04-15', 'Em andamento');

INSERT INTO Objetivo (id_corredor, tipo_objetivo, meta, prazo, status)
VALUES (6, 'Distância', 15.00, '2025-05-01', 'Não Alcançado');

INSERT INTO Objetivo (id_corredor, tipo_objetivo, meta, prazo, status)
VALUES (7, 'Tempo', 50.00, '2025-04-20', 'Em andamento');

INSERT INTO Objetivo (id_corredor, tipo_objetivo, meta, prazo, status)
VALUES (8, 'Distância', 20.00, '2025-07-01', 'Não Alcançado');

INSERT INTO Objetivo (id_corredor, tipo_objetivo, meta, prazo, status)
VALUES (9, 'Distância', 8.00, '2025-02-25', 'Concluído');

INSERT INTO Objetivo (id_corredor, tipo_objetivo, meta, prazo, status)
VALUES (10, 'Frequência', 5.00, '2025-06-10', 'Em andamento');





