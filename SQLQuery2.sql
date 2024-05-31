
--Buscar o nome e ano dos filmes

SELECT Nome, Ano FROM dbo.Filmes


--Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT Nome, Ano
FROM dbo.Filmes
order by Ano ASC

--Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a dura��o

SELECT Nome, Ano, Duracao FROM dbo.Filmes
WHERE Nome = 'De Volta para o Futuro'

-- Buscar os filmes lan�ados em 1997

SELECT * From dbo.Filmes WHERE Ano = 1997

--Buscar os filmes lan�ados AP�S o ano 2000

SELECT * FROM dbo.Filmes WHERE Ano > 2000

--Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente

SELECT * FROM dbo.Filmes WHERE Duracao > 100 AND Duracao < 150 
ORDER BY Duracao ASC

--Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT * FROM dbo.Filmes

SELECT Ano,
	COUNT(*) Quantidade
	FROM dbo.Filmes
	GROUP BY Ano, Duracao
	ORDER BY Quantidade DESC

--Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome

SELECT PrimeiroNome, UltimoNome, Genero FROM dbo.Atores 
WHERE Genero = 'M'

--Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome

SELECT PrimeiroNome, UltimoNome, Genero FROM dbo.Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--Buscar o nome do filme e o g�nero

SELECT Nome, Genero FROM dbo.Filmes INNER JOIN DBO.FilmesGenero ON dbo.Filmes.Id = dbo.FilmesGenero.IdFilme INNER JOIN DBO.Generos 
ON dbo.FilmesGenero.IdGenero = DBO.Generos.Id 


--Buscar o nome do filme e o g�nero do tipo "Mist�rio"

SELECT Nome, Genero FROM dbo.Filmes INNER JOIN DBO.FilmesGenero ON dbo.Filmes.Id = dbo.FilmesGenero.IdFilme INNER JOIN DBO.Generos 
ON dbo.FilmesGenero.IdGenero = DBO.Generos.Id 
WHERE Genero = 'Mist�rio'


--Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

SELECT Nome, PrimeiroNome, UltimoNome, Papel From dbo.Atores INNER JOIN dbo.ElencoFilme ON DBO.Atores.Id = dbo.ElencoFilme.IdAtor 
INNER JOIN dbo.Filmes ON dbo.ElencoFilme.IdFilme = DBO.Filmes.Id


