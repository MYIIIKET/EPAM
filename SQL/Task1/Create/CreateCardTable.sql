create table if not exists Card(
	Card_id int not null auto_increment,
	Account_id int,
    Name varchar(128),
    ExpiryDate date,
    primary key(Card_id, Account_id),
    foreign key(Account_id) references Account(Account_id)
);