SET @d=0, @a=0, @p=0, @s=0;
SELECT MIN(Doctor),MIN(Professor),MIN(Singer),MIN(Actor) 
FROM (SELECT 
      IF(OCCUPATION='Actor',NAME,NULL) AS Actor, 
      IF(OCCUPATION='Doctor',NAME,NULL) AS Doctor, 
      IF(OCCUPATION='Professor',NAME,NULL) AS Professor, 
      IF(OCCUPATION='Singer',NAME,NULL) AS Singer, 
      case 
      OCCUPATION when 'Actor' THEN @a:=@a+1 when 'Doctor' THEN @d:=@d+1 when 'Professor' THEN @p:=@p+1 when 'Singer' THEN @s:=@s+1 
      end 
      AS idn FROM OCCUPATIONS ORDER BY NAME) AS TMP GROUP BY TMP.idn ;
