# -- Premiações -- #

CREATE TABLE premiacoes (
	id_premiacao INT PRIMARY KEY AUTO_INCREMENT,
	nome_premiacao VARCHAR(50) NOT NULL
);

INSERT INTO premiacoes (id_premiacao, nome_premiacao) VALUES 
(0, "Melhor Filme"),
(0, "Melhor Diretor"),
(0, "Melhor Ator"),
(0, "Melhor Atriz");

SELECT * FROM premiacoes;

DROP TABLE premiacoes;

# -- Diretores -- #

CREATE TABLE diretores (
	id_diretor INT PRIMARY KEY AUTO_INCREMENT,
	nome_diretor VARCHAR(50) NOT NULL,
	pais_diretor VARCHAR(50) NOT NULL,
	id_nomeacao_diretor INT NOT NULL,
	ganhador_diretor BOOL,
	FOREIGN KEY (id_nomeacao_diretor) REFERENCES premiacoes(id_premiacao)
); 

INSERT INTO diretores (id_diretor, nome_diretor, pais_diretor, id_nomeacao_diretor, ganhador_diretor) VALUES 
(0, "", "", 2, 1),
(0, "", "", 2, 0);

SELECT * FROM diretores;

SELECT * FROM diretores d INNER JOIN premiacoes p WHERE d.id_nomeacao_diretor = p.id_premiacao AND d.ganhador_diretor != 0;

DROP TABLE diretores;

# -- Ator/Atriz -- #

CREATE TABLE atores (
	id_ator INT PRIMARY KEY AUTO_INCREMENT,
	nome_ator VARCHAR(100) NOT NULL,
	data_nasc_ator DATE NOT NULL, # yyyy-mm-dd
	genero_ator ENUM('Masculino', 'Feminino', 'Outro') NOT NULL,
	id_nomeacao_ator INT NOT NULL,
	ganhador_ator BOOL NOT NULL,
	FOREIGN KEY (id_nomeacao_ator) REFERENCES premiacoes(id_premiacao)	
);

INSERT INTO atores (id_ator, nome_ator, data_nasc_ator, genero_ator, id_nomeacao_ator, ganhador_ator) VALUES 
(0, "", "2003-10-16", "Masculino", 3, 1),
(0, "", "", "Feminino", 4, 0);

SELECT * FROM atores;

SELECT * FROM atores a INNER JOIN premiacoes p WHERE a.id_nomeacao_ator = p.id_premiacao;

DROP TABLE atores;

# -- Filmes -- #

CREATE TABLE filmes (
	id_filme INT PRIMARY KEY AUTO_INCREMENT,
	nome_filme VARCHAR(100) NOT NULL,
	id_diretor_filme INT NOT NULL,
	id_nomeacao_filme INT NOT NULL,
	ganhador_filme BOOL NOT NULL,
	FOREIGN KEY (id_diretor_filme) REFERENCES diretores (id_diretor),
	FOREIGN KEY (id_nomeacao_filme) REFERENCES premiacoes(id_premiacao)
);

INSERT INTO filmes (id_filme, nome_filme, id_diretor_filme, id_nomeacao_filme, ganhador_filme) VALUES
(0, "", 1, 1, 0),
(0, "", 2, 1, 1);

SELECT * FROM filmes;

SELECT * FROM  filmes INNER JOIN diretores WHERE filmes.id_diretor_filme = diretores.id_diretor;

DROP TABLE filmes;
