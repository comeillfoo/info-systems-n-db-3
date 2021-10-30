SELECT ПЛАН_ИД FROM Н_ГРУППЫ_ПЛАНОВ WHERE ПЛАН_ИД IN ( SELECT ПЛАН_ИД FROM Н_ПЛАНЫ WHERE НАПС_ИД IN ( SELECT Н_НАПР_СПЕЦ.ИД FROM Н_НАПР_СПЕЦ WHERE КОД_НАПРСПЕЦ LIKE '23%' ) ) GROUP BY ПЛАН_ИД HAVING COUNT( ПЛАН_ИД ) > 2;
 
