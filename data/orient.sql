-- Database for Orient Shipping

-- Database
CREATE DATABASE Orient;

--  User Account
CREATE TABLE Users(
    userID int not null auto_increment,
    username varchar(50) not null,
    secret_code varchar(50) not null,
    primary key(id)
);

-- Package
CREATE TABLE Package(
    packageID int not null auto_increment,
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

-- Package Track
CREATE TABLE PackageTrack(
    package_trackID int not null auto_increment,
    location varchar(255) not null,
    status varchar(50) not null,
    track_date datetime,
    primary key(package_trackID)
);

-- Vault
CREATE TABLE Vault(
    vaultID int not null auto_increment,
    owner varchar(100) not null,
    vaultNo varchar(20) not null,
    category varchar(20) not null,
    item varchar(30) not null,
    quantity int not null,
    weight int not null,
    deposite_date date not null,
    primary key(vaultID)
);
