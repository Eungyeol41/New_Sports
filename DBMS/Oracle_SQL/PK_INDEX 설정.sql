-- PK 삭제하기
-- ALTER TABLE TABLE명 DROP CONSTRAINT PK명;

-- Unique Index 생성하기
-- CREATE UNIQUE INDEX PK명 ON TABLE명(COLUMN명) TABLESPACE TABLESPACE명;

-- PK에 속성 추가하기
-- ALTER TABLE TABLE명 ADD CONSTRAINT PK명 PRIMARY KEY(COLUMN명);

CREATE UNIQUE INDEX T_FAC_SEQ ON T_FAC_LIST(FAC_SEQ);
ALTER TABLE T_FAC_LIST ADD CONSTRAINT T_FAC_SEQ PRIMARY KEY(FAC_SEQ);

CREATE UNIQUE INDEX T_QNA_SEQ ON T_QNA(QNA_SEQ);
ALTER TABLE T_QNA ADD CONSTRAINT T_QNA_SEQ PRIMARY KEY(QNA_SEQ);

CREATE UNIQUE INDEX T_USER_SEQ ON T_USER(USER_SEQ);
ALTER TABLE T_USER ADD CONSTRAINT T_USER_SEQ PRIMARY KEY(USER_SEQ);