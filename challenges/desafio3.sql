SELECT 
    u.user_name AS pessoa_usuaria,
    COUNT(hist.song_id) AS musicas_ouvidas,
    ROUND(SUM(songs.song_length / 60), 2) AS total_minutos
FROM
    users AS u
        INNER JOIN
    playback_history AS hist ON hist.user_id = u.user_id
        INNER JOIN
    songs AS songs ON songs.song_id = hist.song_id
GROUP BY u.user_name
ORDER BY u.user_name;