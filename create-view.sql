CREATE VIEW rockS AS
SELECT * 
FROM track 
WHERE genre_id IN (SELECT genre_id FROM genre WHERE name = 'rock');

CREATE VIEW classical_counts AS
SELECT * 
FROM track 
WHERE track_id IN (SELECT track_id FROM playlist_track WHERE playlist_id IN (SELECT playlist_id FROM playlist WHERE name = 'Classical')); 
