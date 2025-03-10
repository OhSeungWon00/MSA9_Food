CREATE TABLE `Menu` (
	`menu_id`	BIGINT	PRIMARY KEY	NOT NULL,
	`name`	VARCHAR(100)	NOT NULL	COMMENT '메뉴이름',
	`price`	VARCHAR(100)	NOT NULL	COMMENT '메뉴가격',
	`comment`	VARCHAR(2000)	NOT NULL	COMMENT '메뉴설명',
	`brand_id`	BIGINT	NOT NULL	COMMENT '식당ID',
	`file_id`	BIGINT	NOT NULL	COMMENT 'PK'
);


SELECT* FROM Menu;


DROP TABLE Menu;