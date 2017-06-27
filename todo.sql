CREATE TABLE todos (
id SERIAL PRIMARY KEY,
title VARCHAR(255) NOT NULL,
details TEXT NULL,
priority INTEGER NOT NULL DEFAULT 1,
created_at TIMESTAMP NOT NULL,
completed_at TIMESTAMP NULL);
INSERT INTO todos (title, details, priority,created_at) VALUES ('wash your butt', 'scrub scrub away', 100, '1999-01-08 04:05:06');
INSERT INTO todos (title, details, priority,created_at) VALUES ('eat some food', 'eat all of it', 100, '1993-11-08 04:05:06');
INSERT INTO todos (title, details, priority,created_at) VALUES ('try not to die', 'avoid sharp things for an hour', 10, '2016-01-08 04:05:06');
INSERT INTO todos (title, details, priority,created_at) VALUES ('Play games', 'Clashin YO', 100, '1999-01-08');
INSERT INTO todos (title, details, priority,created_at,completed_at) VALUES ('Eventually wash butt', 'scrub scrub away', 100, '1999-01-11 04:05:06', '2001-01-05 04:05:06');
SELECT * FROM todos WHERE completed_at IS NULL;
SELECT * FROM todos WHERE priority > 1;
UPDATE todos SET completed_at = '2009-10-10 04:05:06' WHERE id = 3;
DELETE FROM todos WHERE completed_at IS NOT NULL;


