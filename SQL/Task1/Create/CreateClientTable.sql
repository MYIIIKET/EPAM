create table if not exists Client(
	Client_id int not null auto_increment,
	Name varchar(128) not null,
    Surname varchar(128) not null,
    Birthday date not null,
    primary key(Client_id)
);