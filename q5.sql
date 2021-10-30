SELECT ГРУППА, AVG( DATE_PART( 'year', now() ) - DATE_PART( 'year', Н_ЛЮДИ.ДАТА_РОЖДЕНИЯ ) )
FROM Н_УЧЕНИКИ JOIN Н_ЛЮДИ
  ON Н_УЧЕНИКИ.ЧЛВК_ИД = Н_ЛЮДИ.ИД
  GROUP BY ГРУППА
  HAVING AVG( DATE_PART( 'year', now() ) - DATE_PART( 'year', Н_ЛЮДИ.ДАТА_РОЖДЕНИЯ ) ) > (
    SELECT AVG( DATE_PART( 'year', now() ) - DATE_PART( 'year', Н_ЛЮДИ.ДАТА_РОЖДЕНИЯ ) )
    FROM Н_УЧЕНИКИ JOIN Н_ЛЮДИ
      ON Н_УЧЕНИКИ.ЧЛВК_ИД = Н_ЛЮДИ.ИД
    WHERE ГРУППА = '3100' GROUP BY ГРУППА
  );
