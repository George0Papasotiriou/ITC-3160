--11
INSERT INTO worker (
    empid,
    lastname,
    firstname,
    departmentid,
    birthdate,
    hiredate,
    salary
) VALUES (
    138,
    'Kolydas',
    'Nicole',
    2,
    '2003-08-13',
    '2023-06-04',
    50000
);

INSERT INTO worker (
    empid,
    lastname,
    firstname,
    departmentid,
    birthdate,
    hiredate,
    salary
) VALUES (
    140,
    'Papasotiriou',
    'George',
    2,
    '2003-04-12',
    '2023-06-04',
    50000
);

INSERT INTO assign (
    projno,
    empid,
    hoursassigned,
    rating
) VALUES (
    1005,
    138,
    40,
    5
);

INSERT INTO assign (
    projno,
    empid,
    hoursassigned,
    rating
) VALUES (
    1025,
    138,
    35,
    5
);

INSERT INTO assign (
    projno,
    empid,
    hoursassigned,
    rating
) VALUES (
    1041,
    140,
    35,
    5
);

INSERT INTO assign (
    projno,
    empid,
    hoursassigned,
    rating
) VALUES (
    1019,
    140,
    40,
    5
);

SELECT
    *
FROM
    worker
WHERE
    empid = 138
    OR empid = 140;