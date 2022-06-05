SELECT MIN(P.price) AS faturamento_minimo, MAX(P.price) AS faturamento_maximo, ROUND(AVG(P.price), 2)  AS faturamento_medio, ROUND(SUM(P.price), 2) AS faturamento_total
FROM SpotifyClone.Users AS U
INNER JOIN Plans AS P ON P.id = U.plan_id;