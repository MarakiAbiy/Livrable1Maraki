INSERT INTO athlete (nom, prenom, id, dateDeNaissance, sexe)
VALUES
('Smith', 'John', 1, '1993-01-15', 'm'),
('White', 'Snow', 2, '1980-08-03', 'f'),
('Jackson', 'Charles', 3, '1998-04-04', 'm'),
('Moore', 'Alexandra', 4, '1989-06-08', 'f'),
('Scurry', 'Chad', 5, '1994-08-08', 'm'),
('Shoffner', 'Antonia', 6, '1982-03-10', 'f'),
('Holm', 'Carol', 7, '1999-09-20', 'f'),
('Ralson', 'Joseph', 8, '1996-05-17', 'm');

SELECT *
FROM athlete
WHERE sexe = 'F';

UPDATE athlete
SET sexe = 'M'
WHERE sexe = 'm';

SELECT *
FROM athlete
WHERE sexe = 'M';

DELETE FROM athlete;

SELECT count(*)
FROM athlete;
