-- 1
select 
    Nome,
    Ano
from Filmes;

-- 2 
select 
    Nome,
    Ano,
    Duracao
from Filmes
order by Ano;

-- 3 
select 
    Nome,
    Ano,
    Duracao
from Filmes f
where f.Nome = 'De Volta para O Futuro'

-- 4 
select 
    Nome,
    Ano,
    Duracao
from Filmes f
where f.Ano = 1997

-- 5 
select 
    Nome,
    Ano,
    Duracao
from Filmes f
where f.Ano > 2000

-- 6
select 
    Nome,
    Ano,
    Duracao
from Filmes f
where f.Duracao > 100 
and f.Duracao < 150
order by f.Duracao

-- 7
select 
    Ano,
    COUNT(1) Quantidade
from Filmes f
group by f.Ano
order by 2 desc

-- 8 
select 
    a.PrimeiroNome,
    a.UltimoNome
from Atores a
where a.Genero = 'M'

-- 9
select 
    a.PrimeiroNome,
    a.UltimoNome
from Atores a
where a.Genero = 'F'
order by a.PrimeiroNome

-- 10
select 
    f.Nome,
    g.Genero
from Filmes f
inner join FilmesGenero fg on fg.IdFilme = f.Id
inner join Generos g on g.Id = fg.IdGenero

-- 11
select 
    f.Nome,
    g.Genero
from Filmes f
inner join FilmesGenero fg on fg.IdFilme = f.Id
inner join Generos g on g.Id = fg.IdGenero
where g.Genero = 'Mistério'

-- 12
select 
    f.Nome,
    a.PrimeiroNome,
    a.UltimoNome,
    ef.Papel
from Filmes f
inner join ElencoFilme ef on ef.IdFilme = f.Id
inner join Atores a on ef.IdAtor = a.Id
