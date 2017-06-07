drop database if exists internetbanking;
create database if not exists InternetBanking;
use InternetBanking;

create table if not exists Client(
	Client_id int not null auto_increment,
	Name varchar(128) not null,
    Surname varchar(128) not null,
    Birthday date not null,
    primary key(Client_id)
);

create table if not exists Account(
	Account_id int not null auto_increment,
	Client_id int,
    Amount decimal(65,2),
    primary key(Account_id, Client_id),
    foreign key(Client_id) references Client(Client_id)
);

create table if not exists Card(
	Card_id int not null auto_increment,
	Account_id int,
    Name varchar(128),
    ExpiryDate date,
    primary key(Card_id, Account_id),
    foreign key(Account_id) references Account(Account_id)
);

create table if not exists Transaction(
	Transaction_id int not null auto_increment,
	Card_id int,
    Date date,
    Amount decimal(65,2),
    Info varchar(256),
    primary key(Transaction_id, Card_id),
    foreign key(Card_id) references Card(Card_id)
);