SELECT *
FROM Н_УЧЕНИКИ
WHERE ЧЛВК_ИД IN
  ( SELECT ИД
    FROM Н_ЛЮДИ
    WHERE ОТЧЕСТВО IN ( SELECT ОТЧЕСТВО FROM Н_ЛЮДИ GROUP BY ОТЧЕСТВО HAVING COUNT( ОТЧЕСТВО ) > 1 )
      AND ДАТА_РОЖДЕНИЯ IN ( SELECT ДАТА_РОЖДЕНИЯ FROM Н_ЛЮДИ GROUP BY ДАТА_РОЖДЕНИЯ HAVING COUNT( ДАТА_РОЖДЕНИЯ ) = 1 ) );
