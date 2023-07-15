DROP TABLE PET;

CREATE TABLE PET (
    NOME VARCHAR(20),
    DONO VARCHAR(20),
    ESPÉCIE VARCHAR(20),
    SEXO VARCHAR(1),
    NASCIMENTO DATE,
    MORTE DATE
);

INSERT INTO PET VALUES (
    'Max',
    'Duda',
    'dog',
    'm',
    '2011-03-12',
    NULL
),
(
    'Fluffy',
    'Harold',
    'cat',
    'f',
    '1993-02-04',
    NULL
),
(
    'Claws',
    'Gwen',
    'cat',
    'm',
    '1994-03-17',
    NULL
),
(
    'Buffy',
    'Harold',
    'dog',
    'f',
    '1989-05-13',
    NULL
),
(
    'Fang',
    'Benny',
    'dog',
    'm',
    '1990-08-27',
    NULL
),
(
    'Bowser',
    'Diane',
    'dog',
    'm',
    '1979-08-31',
    '1995-07-29'
),
(
    'Chirpy',
    'Gwen',
    'bird',
    'f',
    '1998-09-11',
    NULL
),
(
    'Whistler',
    'Gwen',
    'bird',
    NULL,
    '1997-12-09',
    NULL
),
(
    'Slim',
    'Benny',
    'snake',
    'm',
    '1996-04-29',
    NULL
),
(
    'Puffball',
    'Diane',
    'hamster',
    'f',
    '1999-03-30',
    NULL
);

SHOW TABLES;

UPDATE PET
SET
    NASCIMENTO = "1989-08-31"
WHERE
    NOME = "Bowser";

SELECT
    NOME,
    NASCIMENTO,
    MORTE,
    (YEAR(MORTE) - YEAR(NASCIMENTO)) - (
    RIGHT(MORTE, 5)<RIGHT(NASCIMENTO, 5)) IDADE
FROM
    PET
WHERE
    MORTE IS NOT NULL
ORDER BY
    IDADE;

SELECT
    NOME,
    NASCIMENTO,
    MONTH(NASCIMENTO)
FROM
    PET;

SELECT
    NOME,
    NASCIMENTO
FROM
    PET
WHERE
    MONTH(NASCIMENTO) = 3;

SELECT
    NOME,
    NASCIMENTO
FROM
    PET
WHERE
    MONTH (NASCIMENTO) = MONTH(DATE_ADD(CURDATE(),
    INTERVAL 1 MONTH));

SELECT
    NOME,
    NASCIMENTO
FROM
    PET
WHERE
    MONTH (NASCIMENTO) = MOD(MONTH(CURDATE()),
    12) + 1;

SELECT
    1 IS NULL,
    1 IS NOT NULL;

SELECT
    *
FROM
    PET
WHERE
    NOME LIKE "M%";

SELECT
    COUNT(*)
FROM
    PET;

SELECT
    DONO,
    COUNT(*)
FROM
    PET
GROUP BY
    DONO;

SELECT
    ESPÉCIE,
    COUNT(*)
FROM
    PET
GROUP BY
    ESPÉCIE;

SELECT
    SEXO,
    COUNT(*)
FROM
    PET
GROUP BY
    SEXO;

SELECT
    SEXO,
    ESPÉCIE,
    COUNT(*)
FROM
    PET
GROUP BY
    SEXO,
    ESPÉCIE;

SELECT
    SEXO,
    ESPÉCIE,
    COUNT(*)
FROM
    PET
WHERE
    SEXO IS NOT NULL
GROUP BY
    ESPÉCIE,
    SEXO;