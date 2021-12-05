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
    sender varchar(255) not null,
    receiver varchar(255) not null,
    origin varchar(50) not null,
    destination varchar(50) not null,
    estimated_delivery date not null,
    weight int not null,
    package_trackID int not null,
    primary key(id),
    foreign key(package_trackID) references PackageTrack(package_trackID)
);
