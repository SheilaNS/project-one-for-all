SELECT COUNT(H.track_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.Histories AS H
INNER JOIN Users AS U ON U.id = H.user_id
WHERE U.name = 'Bill';