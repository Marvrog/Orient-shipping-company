-- Database for Orient Shipping

-- Database
CREATE DATABASE Orient;

--  User Account
CREATE TABLE Users(
    id int not null auto_increment,
    username varchar(50) not null,
    secret_code varchar(50) not null,
    primary key(id)
);

-- Package
CREATE TABLE Package(
    id int not null auto_increment,
    waybill_id int not null,
    primary key(id)
);
