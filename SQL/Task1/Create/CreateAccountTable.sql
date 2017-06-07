create table if not exists Account(
	Account_id int not null auto_increment,
	Client_id int,
    Amount decimal(65,2),
    primary key(Account_id, Client_id),
    foreign key(Client_id) references Client(Client_id)
);