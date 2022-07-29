USE db_redesocial;

SELECT * FROM tb_grupos
WHERE Id BETWEEN 0 AND 280;

SELECT 
	u.Nome AS Criador,
	p.Titulo AS 'Titulo Postagem',
	t.Grupo 

FROM tb_usuarios AS u 
INNER JOIN tb_postagem AS p ON u.Id = p.FK_Criador
INNER JOIN tb_grupos AS t ON t.Id = p.FK_Grupos
WHERE p.Titulo LIKE '%%';

SELECT 
	u.Nome AS Criador,
	COUNT(*) AS 'Quantidade de Postagens'
FROM tb_usuarios AS u
INNER JOIN tb_postagem AS p
	ON u.Id = p.FK_Criador
GROUP BY u.Nome
ORDER BY u.Nome DESC;