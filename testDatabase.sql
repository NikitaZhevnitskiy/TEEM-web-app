DELETE FROM pot_snapshot;
DELETE FROM user_pot;
DELETE FROM user_pot_invites;
DELETE FROM loan;
DELETE FROM pot;
DELETE FROM user;

INSERT INTO user (user_id, created, dnb_customer, first_name, last_name, money, password, score)
VALUES 
(98765432, curtime(), 0, 'Changiz', 'Hosseini', 1000, 9, 0),
(87654321, curtime(), 0, 'Oda', 'Humlung', 1000, 8, 220),
(76543210, curtime(), 0, 'Clément', 'Marescaux', 1000, 7, 30),
(65432109, curtime(), 0, 'Silje', 'Johnsen', 1000, 6, 30),
(54321098, curtime(), 0, 'Ingrid', 'Kjensli Moe', 1000, 5, 20),
(43210987, curtime(), 0, 'Elvira', 'Semenova', 1000, 4, 0),
(3, curtime(), 0, 'Robert', 'Eikeland', 1000, 3, 0),
(2, curtime(), 0, 'Nikita', 'Zhevnitskiy', 1000, 2, 0);
	/*(1,	curtime(),false, 'Oda','Humlung',1000,'1',0),
	(2,	curtime(),	false, 'Changiz','Hosseini',1000,'2',0),
    (3, curtime(),false, 'Silje','Johnsen',1000,'3',0),
	(4, curtime(),false, 'Ingrid','Kjensli Moe',1000,'4',0),
	(1234, curtime(),false, 'Clement','Marescaux',1000,'1234',0),
	(1111, curtime(),false, 'Nikita','Zhevnitskiy',1000,'1111',0),
	(5, curtime(),false, 'Elvira','Semenova',1000,'5',0),
	(6, curtime(),false, 'Robert','Eikeland',1000,'6',0),
	(7, curtime(),false, 'Marius','Sandli',1000,'7',0),
	(8, curtime(),false, 'Liza','No-Money',0,'8',0),
	(9, curtime(),false, 'Johnny','No-Money',0,'9',0);*/
    

INSERT INTO pot (pot_id, available_money, created, name, total_money)
VALUES
(1, 700, curtime(), 'Familien', 1000),
(2, 2500, curtime(), 'Sydentur', 2500);
/*
(2,0, curtime(), 'Reise til Hellas', 0),
(3,0, curtime(), 'Hyttetur', 0),
(4,0, curtime(), 'Fotballklub tur', 0),
(5,0, curtime(), 'Bil', 0),
(6,0, curtime(), 'Barna', 0),
(7,0, curtime(), 'Extragrupp1', 0),
(8,0, curtime(), 'Extragrupp2', 0),
(9,0, curtime(), 'Extragrupp3', 0);
*/

INSERT INTO user_pot (interest, invested, user_user_id, pot_pot_id)
values
(0, 700, 87654321,1),
(0, 1500, 87654321,2),
(0, 300, 76543210,2),
(0, 200, 54321098,2);
/*(0,0, 1234, 1),
(0,0, 1111, 1),
(0,0, 1,1),
(0,0, 1234, 2),
(0,0, 1,2),
(0,0, 2, 2),
(0,0,3, 3),
(0,0,1111, 4),
(0,0,9, 5),
(0,0,9, 6),
(0,0,9, 7),
(0,0,9, 8);*/
/*
insert into loan (loan_id, created_date, money, pot_id, user_id)
values 
(1,curtime(),10,1,1234),
(2,curtime(),30,1,1234),
(3,curtime(),200,1,1111);
*/

insert into user_pot_invites
values (98765432, 2);
/*
	(9, 4),
	(9, 5),
	(9, 6),
	(9, 7),
	(9, 8);
*/