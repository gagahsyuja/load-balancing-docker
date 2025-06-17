RESTORE DATABASE StackOverflowMini
FROM DISK = '/var/opt/mssql/StackOverflowMini.bak'
WITH MOVE 'StackOverflowMini' TO '/var/opt/mssql/data/StackOverflowMini.mdf',
     MOVE 'StackOverflowMini_log' TO '/var/opt/mssql/data/StackOverflowMini_log.ldf',
     REPLACE;
