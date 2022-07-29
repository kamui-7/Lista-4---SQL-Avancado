USE db_marketplace;

SELECT * FROM tb_produtos
WHERE Id BETWEEN 0 AND 280;

SELECT 
	u.Usuario AS Usuario,
	p.Produto,
	t.Categoria 
FROM tb_usuarios AS u 
INNER JOIN tb_produtos AS p ON u.Id = p.FK_Criador
INNER JOIN tb_categoria AS t ON t.Id = p.FK_Categoria

SELECT 
	u.Usuario AS Comprador,
	COUNT(*) AS 'Quantidade de Produtos'
FROM tb_usuarios AS u
INNER JOIN tb_produtos AS p
	ON u.Id = p.FK_Criador
GROUP BY u.Usuario
ORDER BY u.Usuario DESC;