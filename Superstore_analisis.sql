SELECT
    country AS "País",
    region AS "Región",
    state AS "Estado",
    SUM(sales) AS "Ventas",
    SUM(profit) AS "Ganancia",
    AVG(latitude) AS "Latitud",
    AVG(longitude) AS "Longitud",
    CASE
        WHEN SUM(sales) > 500 THEN '🟢 Zona Alta'
        WHEN SUM(sales) BETWEEN 200 AND 500 THEN '🟡 Zona Media'
        ELSE '🔴 Zona Baja'
    END AS "Rendimiento Zona"
FROM superstore_orders
GROUP BY country, region, state
ORDER BY "Ganancia" DESC;