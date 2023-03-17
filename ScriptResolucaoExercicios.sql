use Filmes


SELECT nome, ano FROM Filmes

SELECT * FROM Filmes
ORDER BY Ano


SELECT * FROM filmes
WHERE Nome LIKE '%De Volta%'

SELECT * FROM filmes
WHERE Ano = 1997


SELECT * FROM filmes
WHERE Ano > 2000


SELECT * FROM filmes
WHERE Duracao > 100 And Duracao <150
ORDER BY Duracao

SELECT Ano, COUNT(Ano) AS 'Quantidade'
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

Select PrimeiroNome,UltimoNome, Genero
FROM Atores
WHERE Genero = 'M'
 
 Select PrimeiroNome,UltimoNome, Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome


SELECT Filmes.Nome, Generos.Genero
FROM Filmes
INNER JOIN FilmesGenero ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero


SELECT Filmes.Nome, Generos.Genero
FROM Filmes
INNER JOIN FilmesGenero ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero
WHERE Genero = 'Mistério'


SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
FROM Atores
INNER JOIN ElencoFilme ON ElencoFilme.IdAtor = Atores.Id
INNER JOIN Filmes ON ElencoFilme.IdFilme = Filmes.Id


SELECT Atores.PrimeiroNome, Filmes.Nome, Generos.Genero
FROM Atores
INNER JOIN ElencoFilme ON ElencoFilme.IdAtor = Atores.Id
INNER JOIN Filmes ON ElencoFilme.IdFilme = Filmes.Id
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id



