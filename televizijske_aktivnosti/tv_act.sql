create user if not exists 'tv_admin'@'localhost' identified by 'tvadmin';
-- test database
create database if not exists tvact_test collate utf8mb4_general_ci character set utf8mb4;
-- production database
create database if not exists tvact character set utf8mb4 collate utf8mb4_general_ci;
grant all privileges on tvact_test.* to 'tv_admin'@'localhost';
grant all privileges on tvact.* to 'tv_admin'@'localhost';
insert into person(state_id,id_card_number,oib_upi,first_name,last_name,sex,citizenship,date_of_birth,
picture) values ("United States of America",119822038,86052601429,"Ben","Affleck","M","US","1972-08-15","https://en.wikipedia.org/wiki/Ben_Affleck#/media/File:Ben_Affleck_at_83rd_Venice_International_Film_Festival-1_(cropped).jpg");