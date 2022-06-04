SELECT COUNT(*) AS cancoes, COUNT(DISTINCT Artists.name) AS artistas, COUNT(DISTINCT Albuns.name) AS albuns FROM SpotifyClone.Tracks
INNER JOIN  Albuns ON Tracks.album_id = Albuns.id
INNER JOIN Artists ON Artists.id = Albuns.artist_id;