# 1 - Todos os filmes nomeados para melhor filme;
SELECT f.nome_filme, p.nome_premiacao, f.ganhador_filme "Ganhou?"
FROM filmes f
INNER JOIN premiacoes p
WHERE f.id_nomeacao_filme = p.id_premiacao;

# 2 - Diretor ganhador de Melhor Diretor;
SELECT * 
FROM diretores d 
WHERE d.ganhador_diretor = 1;

# 3 - Todos nomeados para melhor ator por idade
SELECT * 
FROM atores 
ORDER BY DATE(atores.data_nasc_ator) DESC;

# 4 - Todos os filmes dirigidos por americanos
SELECT f.nome_filme, d.nome_diretor, d.pais_diretor 
FROM filmes f 
INNER JOIN diretores d 
WHERE f.id_diretor_filme = d.id_diretor AND d.pais_diretor = "Estados Unidos";

# 5 - Todas as atrizes nomeadas para melhor atriz nascidas depois de 1965;
SELECT * 
FROM atores a 
WHERE a.genero_ator = "Feminino" AND a.data_nasc_ator > "1965-01-01";