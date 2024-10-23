CREATE TABLE `Reservation` (
	`reservation_id`	BIGINT	PRIMARY KEY	NOT NULL	COMMENT '예약ID',
	`reservation_date`	DATE	NOT NULL	COMMENT '예약날짜',
	`number_people`	INT	NOT NULL	COMMENT '예약인원',
	`brand_id`	BIGINT	NOT NULL	COMMENT '식당ID',
	`Key`	VARCHAR(255)	NOT NULL
);

SELECT* FROM Reservation;


DROP TABLE Reservation;
