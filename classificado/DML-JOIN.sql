USE db_classificados;

SELECT * FROM tb_usuarios
WHERE Id BETWEEN 0 AND 280;

SELECT 
	u.Usuario AS Usuario,
	p.Titulo
	
FROM tb_usuarios AS u 
INNER JOIN tb_anuncios AS p ON u.Id = p.FK_Usuario


SELECT 
	u.Usuario AS Usuario,
	COUNT(*) AS 'Quantidade de Anuncios'
FROM tb_usuarios AS u
INNER JOIN tb_anuncios AS p ON u.Id = p.FK_Usuario
GROUP BY u.Usuario
ORDER BY u.Usuario DESC;