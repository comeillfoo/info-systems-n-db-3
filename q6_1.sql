SELECT * FROM Н_НАПР_СПЕЦ WHERE ИД IN ( SELECT НАПС_ИД FROM Н_ПЛАНЫ WHERE ИД IN ( SELECT ПЛАН_ИД FROM Н_ГРУППЫ_ПЛАНОВ WHERE ГРУППА IN ( SELECT ГРУППА FROM Н_УЧЕНИКИ WHERE ПРИЗНАК = 'отчисл' ) ) );
