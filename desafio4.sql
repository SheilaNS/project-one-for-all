SELECT U.name AS usuario, IF (MAX(YEAR(H.play_date)) = 2021, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.Histories AS H
INNER JOIN Users AS U ON U.id = H.user_id
GROUP BY user_id
ORDER BY U.name ASC;