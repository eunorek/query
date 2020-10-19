SELECT * FROM
    (SELECT rownum R, N.* FROM 
        (SELECT * FROM board ORDER BY num DESC) N
    )
WHERE R BETWEEN 11 AND 11+9;

-- startRow = curPage*10 - 9
-- lastRow = curPage*10

SELECT * FROM board;
SELECT COUNT(*) FROM board;