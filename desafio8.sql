SELECT AR.name AS artista, AL.name AS album
FROM SpotifyClone.Albuns AS AL
INNER JOIN Artists AS AR ON AR.id = AL.artist_id
WHERE AR.name = 'Walter Phoenix'
ORDER BY AL.name ASC;