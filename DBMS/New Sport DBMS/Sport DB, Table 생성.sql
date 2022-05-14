-- sport DB 생성
CREATE DATABASE sport default CHARACTER SET UTF8;
-- 만들어진 DB 사용하기
SHOW DATABASES;
-- DB 사용하기
use sport;
show tables;

create table t_fac_list(
	seq			INT				PRIMARY KEY,
	fac_cd		VARCHAR(4)		NOT NULL,
	fac_nm		VARCHAR(255)	NOT NULL,
	fac_tel		VARCHAR(11)		NULL,
	fac_addr	VARCHAR(255)	NOT NULL,
	fac_money 	VARCHAR(1)		NOT NULL,
	fac_sport	VARCHAR(2)		NOT NULL
);