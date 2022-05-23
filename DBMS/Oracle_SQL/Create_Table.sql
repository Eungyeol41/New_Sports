--※ Oracle Version 확인
select * from v$version;

--※ Oracle SID 확인
select instance from v$thread;

--※ Oracle DB_NAME 확인
select name from v$database;

--※ Oracle User 확인
select * from all_users;

--※ 등록된 User 목록 보기
select username, user_id from dba_users order by username;

--※ User가 소유한 모든 테이블 보기
select table_name from user_tables;

--※ 사용자 정보 확인
-- select username, default_tablespace,temporary_tablespace from dba_users; 

--※ 오브젝트 조회
select * from all_objects where object_name like '명'; 

--※ 테이블 조회
select * from all_tables where table_name like '명'; 

--※ 시퀀스 정보 보기
select * from user_sequences;

--※ 시노님 조회
-- select * from all_synonyms where synonym_name='명'; 

--※ 테이블 인덱스 정보 조회
-- select * from all_ind_columns where table_name='테이블명';

--※ 테이블의 컬럼 정보 조회
-- select * from all_tab_columns where table_name='테이블명'; 

--※ table comment 쿼리
-- select * from all_tab_comments where table_name='테이블명';

--※ column comment 쿼리
-- select * from all_col_comments where table_name='테이블명';

--※ 권한부여 유저별 테이블 권한 확인
SELECT * FROM USER_TAB_PRIVS_RECD;

--※ 전체유저별 테이블 권한 확인 
SELECT * FROM ALL_TAB_PRIVS_RECD;

-- 체육관 시설 리스트
create table t_fac_list(
  "FAC_SEQ" NUMBER(11) NOT NULL,
  "FAC_RGST_DT" DATE DEFAULT SYSDATE,
  "FAC_RGST_ID" varchar2(20),
  "FAC_RVSE_DT" DATE DEFAULT SYSDATE,
  "FAC_RVSE_ID" varchar2(20),
  "FAC_USE_YN" varchar2(1) DEFAULT 'Y',
  "FAC_CD" varchar2(4),
  "FAC_NM" varchar2(255),
  "FAC_ADDR" varchar2(255),
  "FAC_TEL" varchar2(11),
  "FAC_MONEY" varchar2(1),
  "FAC_SPORT" varchar2(2)
);

COMMENT ON COLUMN "T_FAC_LIST"."FAC_SEQ" IS '일련번호';
COMMENT ON COLUMN "T_FAC_LIST"."FAC_RGST_DT" IS '등록일';
COMMENT ON COLUMN "T_FAC_LIST"."FAC_RGST_ID" IS '등록자';
COMMENT ON COLUMN "T_FAC_LIST"."FAC_RVSE_DT" IS '수정일';
COMMENT ON COLUMN "T_FAC_LIST"."FAC_RVSE_ID" IS '수정자';
COMMENT ON COLUMN "T_FAC_LIST"."FAC_USE_YN" IS '사용여부';
COMMENT ON COLUMN "T_FAC_LIST"."FAC_CD" IS '시설코드';
COMMENT ON COLUMN "T_FAC_LIST"."FAC_NM" IS '시설명';
COMMENT ON COLUMN "T_FAC_LIST"."FAC_ADDR" IS '시설주소';
COMMENT ON COLUMN "T_FAC_LIST"."FAC_TEL" IS '시설전화번호';
COMMENT ON COLUMN "T_FAC_LIST"."FAC_MONEY" IS '시설이용료';
COMMENT ON COLUMN "T_FAC_LIST"."FAC_SPORT" IS '이용가능한종목';

-- user 테이블
create table t_user(
  "USER_SEQ" number(11) NOT NULL,
  "U_RGST_DT" DATE DEFAULT SYSDATE NOT NULL,
  "U_RGST_ID" varchar(20),
  "U_RVSE_DT" DATE DEFAULT SYSDATE NOT NULL,
  "U_RVSE_ID" varchar(20),
  "U_USE_YN" char(1) DEFAULT 'Y',
  "U_ID" varchar(20),
  "U_PW" varchar(20),
  "U_NM" varchar(60),
  "U_ADDR" varchar(255),
  "U_DTLS_ADDR" varchar(255),
  "U_TEL" varchar(11),
  "U_CERT_KEY_ENC_VAL" varchar(1000)
);
COMMENT ON COLUMN "T_USER"."USER_SEQ" IS '일련번호';
COMMENT ON COLUMN "T_USER"."U_RGST_DT" IS '등록일';
COMMENT ON COLUMN "T_USER"."U_RGST_ID" IS '등록자';
COMMENT ON COLUMN "T_USER"."U_RVSE_DT" IS '수정일';
COMMENT ON COLUMN "T_USER"."U_RVSE_ID" IS '수정자';
COMMENT ON COLUMN "T_USER"."U_USE_YN" IS '사용여부';
COMMENT ON COLUMN "T_USER"."U_ID" IS '사용자ID';
COMMENT ON COLUMN "T_USER"."U_PW" IS '사용자Password';
COMMENT ON COLUMN "T_USER"."U_NM" IS '사용자이름';
COMMENT ON COLUMN "T_USER"."U_ADDR" IS '주소';
COMMENT ON COLUMN "T_USER"."U_DTLS_ADDR" IS '세부주소';
COMMENT ON COLUMN "T_USER"."U_TEL" IS '사용자전화번호';
COMMENT ON COLUMN "T_USER"."U_CERT_KEY_ENC_VAL" IS '나이스본인인증키';

-- qna 테이블
create table t_qna(
  "QNA_SEQ" number(11) NOT NULL,
  "Q_RGST_DT" DATE DEFAULT SYSDATE NOT NULL,
  "Q_RGST_ID" varchar(20),
  "Q_RVSE_DT" DATE DEFAULT SYSDATE NOT NULL,
  "Q_RVSE_ID" varchar(20),
  "Q_USE_YN" char(1) DEFAULT 'Y',
  "Q_USER_ID" varchar(20),
  "Q_TITLE" varchar(20),
  "Q_CONT" varchar(255),
  "Q_NTC_YN" char(1) DEFAULT 'N',
  "Q_CLK_CNT" number(11) DEFAULT 0
);

COMMENT ON COLUMN "T_QNA"."QNA_SEQ" IS '일련번호';
COMMENT ON COLUMN "T_QNA"."Q_RGST_DT" IS '등록일';
COMMENT ON COLUMN "T_QNA"."Q_RGST_ID" IS '등록자';
COMMENT ON COLUMN "T_QNA"."Q_RVSE_DT" IS '수정일';
COMMENT ON COLUMN "T_QNA"."Q_RVSE_ID" IS '수정자';
COMMENT ON COLUMN "T_QNA"."Q_USE_YN" IS '사용여부';
COMMENT ON COLUMN "T_QNA"."Q_USER_ID" IS '사용자ID';
COMMENT ON COLUMN "T_QNA"."Q_TITLE" IS '제목';
COMMENT ON COLUMN "T_QNA"."Q_CONT" IS '내용';
COMMENT ON COLUMN "T_QNA"."Q_NTC_YN" IS '공지여부';
COMMENT ON COLUMN "T_QNA"."Q_CLK_CNT" IS '조회수';