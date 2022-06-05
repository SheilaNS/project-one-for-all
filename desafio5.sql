SELECT T.name AS cancao,COUNT(H.track_id) AS reproducoes
FROM SpotifyClone.Histories AS H
INNER JOIN Tracks AS T ON T.id = H.track_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;