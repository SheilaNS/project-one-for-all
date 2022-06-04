SELECT U.name AS usuario, COUNT(track_id) AS qtde_musicas_ouvidas, ROUND(SUM(T.length) / 60, 2) AS total_minutos
FROM SpotifyClone.Histories AS H
INNER JOIN Users AS U ON U.id = H.user_id
INNER JOIN Tracks AS T ON T.id = H.track_id
GROUP BY user_id
ORDER BY U.name ASC;