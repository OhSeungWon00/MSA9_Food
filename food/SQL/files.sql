CREATE TABLE `Files` (
  `file_id` BIGINT	PRIMARY KEY NOT NULL COMMENT 'PK',
  `p_no` BIGINT NOT NULL COMMENT '부모PK',
  `file_type` ENUM('MAIN', 'SUB') NULL DEFAULT 'MAIN' COMMENT '파일종류 (MAIN:대표or썸네일,SUB:일반or하위)',
  `file_name` TEXT NOT NULL COMMENT '파일명',
  `file_path` TEXT NOT NULL COMMENT '파일경로',
  `file_size` BIGINT NULL COMMENT '파일용량(Byte)',
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록일자',
  `update_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '수정일자' -- 수정일자는 업데이트 시 자동으로 갱신되도록 설정
);


SELECT* FROM Files;


DROP TABLE Files;

