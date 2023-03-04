SELECT 
    u.user_name AS pessoa_usuaria,
    CASE
        WHEN MAX(YEAR(hist.playback_date)) >= 2021 THEN 'Ativa'
        ELSE 'Inativa'
    END AS status_pessoa_usuaria
FROM
    users AS u
        INNER JOIN
    playback_history AS hist ON u.user_id = hist.user_id
GROUP BY u.user_name
ORDER BY u.user_name;