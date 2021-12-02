CREATE DATABASE pave_test;
USE pave_test;
CREATE TABLE ping_pong (id VARCHAR(4), value VARCHAR(4));
INSERT INTO ping_pong VALUES ('ping', 'pong'), ('pong', 'ping');
CREATE USER 'app'@'*' IDENTIFIED BY 'supersecurepassword';
GRANT SELECT ON pave_test.ping_pong TO 'app'@'%';
FLUSH PRIVILEGES;
