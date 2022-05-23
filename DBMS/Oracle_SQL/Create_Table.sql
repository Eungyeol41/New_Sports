--�� Oracle Version Ȯ��
select * from v$version;

--�� Oracle SID Ȯ��
select instance from v$thread;

--�� Oracle DB_NAME Ȯ��
select name from v$database;

--�� Oracle User Ȯ��
select * from all_users;

--�� ��ϵ� User ��� ����
select username, user_id from dba_users order by username;

--�� User�� ������ ��� ���̺� ����
select table_name from user_tables;

--�� ����� ���� Ȯ��
-- select username, default_tablespace,temporary_tablespace from dba_users; 

--�� ������Ʈ ��ȸ
select * from all_objects where object_name like '��'; 

--�� ���̺� ��ȸ
select * from all_tables where table_name like '��'; 

--�� ������ ���� ����
select * from user_sequences;

--�� �ó�� ��ȸ
-- select * from all_synonyms where synonym_name='��'; 

--�� ���̺� �ε��� ���� ��ȸ
-- select * from all_ind_columns where table_name='���̺��';

--�� ���̺��� �÷� ���� ��ȸ
-- select * from all_tab_columns where table_name='���̺��'; 

--�� table comment ����
-- select * from all_tab_comments where table_name='���̺��';

--�� column comment ����
-- select * from all_col_comments where table_name='���̺��';

--�� ���Ѻο� ������ ���̺� ���� Ȯ��
SELECT * FROM USER_TAB_PRIVS_RECD;

--�� ��ü������ ���̺� ���� Ȯ�� 
SELECT * FROM ALL_TAB_PRIVS_RECD;

-- ü���� �ü� ����Ʈ
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

COMMENT ON COLUMN "T_FAC_LIST"."FAC_SEQ" IS '�Ϸù�ȣ';
COMMENT ON COLUMN "T_FAC_LIST"."FAC_RGST_DT" IS '�����';
COMMENT ON COLUMN "T_FAC_LIST"."FAC_RGST_ID" IS '�����';
COMMENT ON COLUMN "T_FAC_LIST"."FAC_RVSE_DT" IS '������';
COMMENT ON COLUMN "T_FAC_LIST"."FAC_RVSE_ID" IS '������';
COMMENT ON COLUMN "T_FAC_LIST"."FAC_USE_YN" IS '��뿩��';
COMMENT ON COLUMN "T_FAC_LIST"."FAC_CD" IS '�ü��ڵ�';
COMMENT ON COLUMN "T_FAC_LIST"."FAC_NM" IS '�ü���';
COMMENT ON COLUMN "T_FAC_LIST"."FAC_ADDR" IS '�ü��ּ�';
COMMENT ON COLUMN "T_FAC_LIST"."FAC_TEL" IS '�ü���ȭ��ȣ';
COMMENT ON COLUMN "T_FAC_LIST"."FAC_MONEY" IS '�ü��̿��';
COMMENT ON COLUMN "T_FAC_LIST"."FAC_SPORT" IS '�̿밡��������';

-- user ���̺�
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
COMMENT ON COLUMN "T_USER"."USER_SEQ" IS '�Ϸù�ȣ';
COMMENT ON COLUMN "T_USER"."U_RGST_DT" IS '�����';
COMMENT ON COLUMN "T_USER"."U_RGST_ID" IS '�����';
COMMENT ON COLUMN "T_USER"."U_RVSE_DT" IS '������';
COMMENT ON COLUMN "T_USER"."U_RVSE_ID" IS '������';
COMMENT ON COLUMN "T_USER"."U_USE_YN" IS '��뿩��';
COMMENT ON COLUMN "T_USER"."U_ID" IS '�����ID';
COMMENT ON COLUMN "T_USER"."U_PW" IS '�����Password';
COMMENT ON COLUMN "T_USER"."U_NM" IS '������̸�';
COMMENT ON COLUMN "T_USER"."U_ADDR" IS '�ּ�';
COMMENT ON COLUMN "T_USER"."U_DTLS_ADDR" IS '�����ּ�';
COMMENT ON COLUMN "T_USER"."U_TEL" IS '�������ȭ��ȣ';
COMMENT ON COLUMN "T_USER"."U_CERT_KEY_ENC_VAL" IS '���̽���������Ű';

-- qna ���̺�
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

COMMENT ON COLUMN "T_QNA"."QNA_SEQ" IS '�Ϸù�ȣ';
COMMENT ON COLUMN "T_QNA"."Q_RGST_DT" IS '�����';
COMMENT ON COLUMN "T_QNA"."Q_RGST_ID" IS '�����';
COMMENT ON COLUMN "T_QNA"."Q_RVSE_DT" IS '������';
COMMENT ON COLUMN "T_QNA"."Q_RVSE_ID" IS '������';
COMMENT ON COLUMN "T_QNA"."Q_USE_YN" IS '��뿩��';
COMMENT ON COLUMN "T_QNA"."Q_USER_ID" IS '�����ID';
COMMENT ON COLUMN "T_QNA"."Q_TITLE" IS '����';
COMMENT ON COLUMN "T_QNA"."Q_CONT" IS '����';
COMMENT ON COLUMN "T_QNA"."Q_NTC_YN" IS '��������';
COMMENT ON COLUMN "T_QNA"."Q_CLK_CNT" IS '��ȸ��';