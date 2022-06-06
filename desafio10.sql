SELECT T.name AS nome, COUNT(H.track_id) AS reproducoes
FROM SpotifyClone.Histories AS H
INNER JOIN Tracks AS T ON T.id = H.track_id
INNER JOIN Users AS U ON U.id = H.user_id
INNER JOIN Plans AS P ON P.id = U.plan_id
WHERE P.plan IN ('gratuito', 'pessoal')
GROUP BY T.name
ORDER BY T.name ASC;