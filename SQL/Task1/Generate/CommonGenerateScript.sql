insert into Client(Name, Surname, Birthday)
			values
            ('Rashmi', 'Alfero','1958-03-02'),
            ('Plato', 'De Vries','1960-10-23'),
            ('Jayanta', 'Haumann','1962-08-19'),
            ('Wulfstan', 'Mishra','1976-07-04'),
            ('Aputsiaq', 'Hult','1977-04-14');
            
insert into Account(Client_id, Amount)
			values
            (1,8866.55),
            (1,5726.58),
            (2,8880.52),
            (3,2897.89),
            (4,7810.09),
            (4,7646.07),
            (4,161.05),
            (5,7704.25);
            
insert into Card(Account_id, Name, ExpiryDate)
			values
            (1,'Warren','2007-10-28'),
            (2,'Detlef','2008-04-02'),
            (2,'Shirley','2008-12-05'),
            (3,'Sindri','2009-01-18'),
            (4,'Islambek','2009-10-20'),
            (5,'Dominik','2012-12-11'),
            (6,'Zebadiah','2013-04-22'),
            (7,'Aubin','2013-05-08'),
            (7,'Quirinus','2013-10-21'),
            (8,'Bohuslav','2014-11-01');
            
insert into Transaction(Card_id, Date, Amount, Info) 
			values(1,'2003-09-15',10000.00,'transaction 1'),
			(4,'2009-03-17',88.80,'transaction 2'),
            (6,'2012-07-25',31.23,'transaction 3'),
            (8,'2025-11-22',75.19,'transaction 4');