SELECT AR.name AS artista, AL.name AS album, COUNT(F.artist_id) AS seguidores
FROM SpotifyClone.Artists AS AR
INNER JOIN Albuns AS AL ON AR.id = AL.artist_id
INNER JOIN Followers AS F ON F.artist_id = AL.artist_id 
GROUP BY AR.name, AL.name
ORDER BY seguidores DESC, artista ASC, album ASC;