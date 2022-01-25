USE codeup_test_db;

TRUNCATE quotes;

INSERT INTO quotes (author_first_name, author_last_name, content)
VALUES('Douglas', 'Adams', 'Don''t Panic');

SELECT id, author_first_name, content FROM quotes;

