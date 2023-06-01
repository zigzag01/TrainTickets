DROP TABLE IF EXISTS TrainTickets

if not exists (select * from sysobjects where name='TrainTickets' and xtype='U')

CREATE TABLE TrainTickets(
	id INT IDENTITY(1,1) NOT NULL,
	TypeOfTicket nvarchar(50) NOT NULL,
	Price money NOT NULL, 
	Van int NOT NULL, 
	SeatNumber int NOT NULL,
	AffordTicket int DEFAULT 0,
	CHECK (AffordTicket = 0 OR AffordTicket = 1),

	PRIMARY KEY(id)
);

INSERT INTO TrainTickets
VALUES ('плацкарт', 19.99, 12, 67, 0);

DROP TABLE IF EXISTS TrainSchedule

if not exists (select * from sysobjects where name='TrainSchedule' and xtype='U')

CREATE TABLE TrainSchedule(
	id INT IDENTITY(1,1) NOT NULL,
	DepartureDate date NOT NULL,
	ArrivalDate date NOT NULL,
	FromWhere nvarchar(50) NOT NULL,
	ToWhere nvarchar(50) NOT NULL,
	TravelTime time NOT NULL,
	TrainId int NOT NULL

	PRIMARY KEY(id)
);

INSERT INTO TrainSchedule
VALUES ('2023-02-02', '2023-02-03', 'минск', 'питер', '20:00:00', 7);

DROP TABLE IF EXISTS Passengers

if not exists (select * from sysobjects where name='Passengers' and xtype='U')

CREATE TABLE Passengers(
	id INT IDENTITY(1,1) NOT NULL,
	Name nvarchar(50) NOT NULL,
	LastName nvarchar(50) NOT NULL,

	PRIMARY KEY(id)
);

INSERT INTO Passengers
VALUES ('Max', 'Bowl');

select * from TrainSchedule