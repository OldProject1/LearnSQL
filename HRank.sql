SELECT CONCAT(Name, '(', LEFT(Occupation, 1), ')') FROM OCCUPATIONS ORDER BY Name;
SELECT CONCAT('There are a total of ', COUNT(*), ' ',Lower(Occupation), 's') FROM OCCUPATIONS ORDER BY COUNT(*), Occupation;
