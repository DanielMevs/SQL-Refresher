-- Right joins are the same as
-- left joins with the tables
-- flipped and vice-versa

SELECT * FROM TableA
RIGHT OUTER JOIN TableB
ON TableA.col_match = TableB.col_match

-- If we want results exclusive to table B
SELECT * FROM TableA
RIGHT OUTER JOIN TableB
ON TableA.col_match = TableB.col_match
WHERE TableA.id IS null