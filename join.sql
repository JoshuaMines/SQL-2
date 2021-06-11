SELECT * FROM invoice_line
WHERE unit_price > 0.99;

SELECT customer.first_name, customer.last_name, customer.customer_id, invoice.invoice_date, invoice.total
FROM  customer
JOIN invoice
ON customer.customer_id = invoice.customer_id
ORDER BY customer.first_name;

SELECT customer.first_name, customer.last_name, employee.first_name, employee.last_name
FROM customer
JOIN employee
ON customer.customer_id = employee.employee_id
ORDER BY customer.first_name;

SELECT artist.name, album.title
FROM artist
JOIN album
ON artist.name = album.title
ORDER BY artist.name;

SELECT * FROM playlist
WHERE name ILIKE 'music';

SELECT playlist_track.playlist_id
FROM playlist_track
JOIN playlist
ON playlist.playlist_id = playlist_track.playlist_id
WHERE playlist.name = 'Music';

SELECT name FROM track
join playlist_track
on track.track_id = playlist_track.track_id
WHERE playlist_id = 5;

SELECT TRACK.NAME, PLAYLIST.NAME FROM TRACK
JOIN playlist_track on track.track_id = playlist_track.track_id
JOIN playlist on playlist.playlist_id = playlist_track.playlist_id;

SELECT track.name, album.title
FROM track
JOIN album ON album.album_id = track.album_id
JOIN genre ON track.genre_id = genre.genre_id
WHERE genre.name = 'Alternative & Punk';