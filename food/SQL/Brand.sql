CREATE TABLE `Brand` (
	`brand_id`	BIGINT	PRIMARY KEY	NOT NULL	COMMENT '식당ID',
	`name`	VARCHAR(100)	NOT NULL	COMMENT '가게명',
	`location`	VARCHAR(255)	NOT NULL	COMMENT '주소',
	`phone`	VARCHAR(15)	NULL	COMMENT '전화번호',
	`file_id`	BIGINT	NOT NULL	COMMENT 'PK'
);




SELECT* FROM Brand;



DROP TABLE Brand;