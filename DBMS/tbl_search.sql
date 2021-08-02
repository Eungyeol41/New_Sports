USE db_sports;

DROP TABLE tbl_search;
CREATE TABLE tbl_search(
	sp_seq		BIGINT		PRIMARY KEY		AUTO_INCREMENT,
	sp_money	VARCHAR(10),
	sp_district	VARCHAR(20),
	sp_search	VARCHAR(500),
	sp_sport	VARCHAR(100)
);

-- dropdown 종목 부분 가져올 수 있을까..해서 넣은 곳
INSERT INTO tbl_search	(sp_sport)	VALUES	('	검도	');
INSERT INTO tbl_search	(sp_sport)	VALUES	('	게이트볼	');
INSERT INTO tbl_search	(sp_sport)	VALUES	('	골프	');
INSERT INTO tbl_search	(sp_sport)	VALUES	('	구기체육관	');
INSERT INTO tbl_search	(sp_sport)	VALUES	('	국궁	');
INSERT INTO tbl_search	(sp_sport)	VALUES	('	농구	');
INSERT INTO tbl_search	(sp_sport)	VALUES	('	배구	');
INSERT INTO tbl_search	(sp_sport)	VALUES	('	배드민턴	');
INSERT INTO tbl_search	(sp_sport)	VALUES	('	생활체육관	');
INSERT INTO tbl_search	(sp_sport)	VALUES	('	수영	');
INSERT INTO tbl_search	(sp_sport)	VALUES	('	스케이트	');
INSERT INTO tbl_search	(sp_sport)	VALUES	('	승마	');
INSERT INTO tbl_search	(sp_sport)	VALUES	('	야구 / 소프트볼	');
INSERT INTO tbl_search	(sp_sport)	VALUES	('	양궁	');
INSERT INTO tbl_search	(sp_sport)	VALUES	('	육상	');
INSERT INTO tbl_search	(sp_sport)	VALUES	('	인공암벽	');
INSERT INTO tbl_search	(sp_sport)	VALUES	('	인라인스케이트	');
INSERT INTO tbl_search	(sp_sport)	VALUES	('	정구	');
INSERT INTO tbl_search	(sp_sport)	VALUES	('	족구	');
INSERT INTO tbl_search	(sp_sport)	VALUES	('	축구	');
INSERT INTO tbl_search	(sp_sport)	VALUES	('	테니스	');