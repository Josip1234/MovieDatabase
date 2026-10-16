create user if not exists 'tv_admin'@'localhost' identified by 'tvadmin';
-- test database
create database if not exists tvact_test collate utf8mb4_general_ci character set utf8mb4;
-- production database
create database if not exists tvact character set utf8mb4 collate utf8mb4_general_ci;
grant all privileges on tvact_test.* to 'tv_admin'@'localhost';