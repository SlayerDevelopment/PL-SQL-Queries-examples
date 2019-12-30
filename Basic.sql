-- List all Users 1
select * from all_users;
-- List all Users 2
select username from dba_users;
-- List all Users 3
select * from dba_users;
-- List all tablespaces
select * from V$TABLESPACE;
-- List all tables by tablespace
CREATE TABLESPACE ubigeoTs
    DATAFILE 'ubigeoTs.dbf'
    SIZE 100M AUTOEXTEND ON;
-- Create user with tablespace by default ubigeoTs
CREATE USER devUbigeo
    IDENTIFIED BY 123
    DEFAULT TABLESPACE ubigeoTs
    QUOTA 100M ON ubigeoTs;
-- Grant privileges on devUbigeo
GRANT ALL PRIVILEGES TO devUbigeo;