SELECT CONCAT(Name, '(', LEFT(Occupation, 1), ')') AS ProName FROM OCCUPATIONS ORDER BY ProName;
SELECT CONCAT('There are a total of ', COUNT(Occupation), ' ',Lower(Occupation), 's') FROM OCCUPATIONS GROUP BY Occupation ORDER BY COUNT(Occupation), Occupation;
