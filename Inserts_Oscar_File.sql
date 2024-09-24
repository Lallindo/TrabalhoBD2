INSERT INTO diretores (id_diretor, nome_diretor, pais_diretor, id_nomeacao_diretor, ganhador_diretor) VALUES 
(0, "Christopher Nolan", "Reino Unido", 2, 1),
(0, "Justine Triet", "França", 2, 0),
(0, "Martin Scorcese", "Estados Unidos", 2, 0),
(0, "Jonathan Glazer", "Reino Unido", 2, 0),
(0, "Yorgos Lanthimos", "Grécia", 2, 0);

SELECT * FROM diretores;

# 3 = Melhor Ator; 4 = Melhor Atriz;
INSERT INTO atores (id_ator, nome_ator, data_nasc_ator, genero_ator, id_nomeacao_ator, ganhador_ator) VALUES 
(0, "Paul Giamatti", "1967-06-06", "Masculino", 3, 0),
(0, "Lily Gladstone", "1986-08-02", "Feminino", 4, 0);

INSERT INTO atores (id_ator, nome_ator, data_nasc_ator, genero_ator, id_nomeacao_ator, ganhador_ator) VALUES 
(0, "Cillian Murphy", "1976-05-25", "Masculino", 3, 1),
(0, "Bradley Cooper", "1975-01-05", "Masculino", 3, 0),
(0, "Emma Stone", "1988-11-06", "Feminino", 4, 1),
(0, "Colman Domingo", "1969-11-29", "Masculino", 3, 0),
(0, "Jeffrey Wright", "1965-12-07", "Masculino", 3, 0),
(0, "Sandra Hüller", "1978-04-30", "Feminino", 4, 0),
(0, "Carey Mulligan", "1985-05-28", "Feminino", 4, 0),
(0, "Annette Bening", "1958-05-29", "Feminino", 4, 0);

SELECT * FROM atores a WHERE a.ganhador_ator = 1;


INSERT INTO filmes (id_filme, nome_filme, id_diretor_filme, id_nomeacao_filme, ganhador_filme) VALUES
(0, "Oppenheimer", 1, 1, 1),
(0, "Poor Things", 5, 1, 0),
(0, "Killers of the Flower Moon", 3, 1, 0),
(0, "Anatomy of a Fall", 2, 1, 0),
(0, "The Zone of Interest", 4, 1, 0);

SELECT * FROM filmes;