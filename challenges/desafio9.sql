SELECT 
    COUNT(*) AS musicas_no_historico
FROM
    playback_history
WHERE
    user_id = 1;