USE db_ecomerce;

SELECT * FROM tb_usuarios
WHERE Id BETWEEN 0 AND 280;

SELECT 
	u.Usuario AS Usuario,
	t.Produto
	
FROM tb_usuarios AS u 
INNER JOIN compras AS p ON u.Id = p.FK_Usuario
INNER JOIN tb_produtos AS t ON t.Id = p.FK_Produto

SELECT 
	u.Usuario AS Comprador,
	COUNT(*) AS 'Quantidade de Produtos'
FROM tb_usuarios AS u
INNER JOIN compras AS p ON u.Id = p.FK_Usuario
INNER JOIN tb_produtos AS t ON t.Id = p.FK_Usuario
GROUP BY u.Usuario
ORDER BY u.Usuario DESC;