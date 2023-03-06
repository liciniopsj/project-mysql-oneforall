SELECT 
    FORMAT(MIN(s.subscription_price), 2) AS faturamento_minimo,
    FORMAT(MAX(s.subscription_price), 2) AS faturamento_maximo,
    FORMAT(AVG(s.subscription_price), 2) AS faturamento_medio,
    FORMAT(SUM(s.subscription_price), 2) AS faturamento_total
FROM
    users AS u
        INNER JOIN
    subscription_plans AS s ON u.subscription_id = s.subscription_id;