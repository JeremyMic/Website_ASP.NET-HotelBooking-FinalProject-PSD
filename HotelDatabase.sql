CREATE TABLE [User](
	username VARCHAR(255) PRIMARY KEY NOT NULL,
	[email] VARCHAR(255),
	name VARCHAR(255),
	[password] VARCHAR(255),
	[role] VARCHAR(255),
)
GO

CREATE TABLE Hotel(
	hotelId INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	[name] VARCHAR(255),
	[address] VARCHAR(255),
	hotelPhone VARCHAR(255)
)
GO

CREATE TABLE Room(
	roomId INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	roomType VARCHAR(255),
	roomPrice VARCHAR(255)
)
GO

CREATE TABLE HeaderTransaction(
	transactionId INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	[user_id] VARCHAR(255),
	transactionDate DATETIME,
	FOREIGN KEY ([user_id]) REFERENCES [User](username)
)
GO

CREATE TABLE DetailTransaction(
	transaction_id INT,
	hotel_id INT,
	room_id INT,
	price MONEY,
	quantity INT,
	startDate DATETIME,
	endDate DATETIME,
	FOREIGN KEY (transaction_id) REFERENCES HeaderTransaction(transactionId),
	FOREIGN KEY (hotel_id) REFERENCES Hotel(hotelId),
	FOREIGN KEY (room_id) REFERENCES Room(roomId)
)
GO