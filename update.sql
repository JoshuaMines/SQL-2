UPDATE customer
SET fax = null
WHERE fax IS NOT null;

UPDATE customer
set company = 'self'
WHERE company IS null;

UPDATE customer
SET last_name = 'Thompson'
WHERE first_name = 'Julia' AND last_name IS 'Barnett';

UPDATE customer
set support_rep_id = 4
WHERE email = 'luisrojas@yahoo.cl';

UPDATE track
SET composer ='The Darkness around us'
WHERE composer IS NULL;