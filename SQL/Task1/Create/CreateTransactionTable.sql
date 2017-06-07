create table if not exists Transaction(
	Transaction_id int not null auto_increment,
	Card_id int,
    Date date,
    Amount decimal(65,2),
    Info varchar(256),
    primary key(Transaction_id, Card_id),
    foreign key(Card_id) references Card(Card_id)
);