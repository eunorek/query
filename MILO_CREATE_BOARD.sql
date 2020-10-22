CREATE TABLE board (
    num NUMBER CONSTRAINT board_num_pk PRIMARY KEY,
    title VARCHAR2(1000),
    writer VARCHAR2(1000),
    contents VARCHAR2(3000),
    regDate date,
    hit NUMBER
);

commit;

CREATE SEQUENCE board_seq 
start with 1
increment by 1
nomaxvalue
nocycle
nocache;

commit;

INSERT INTO board VALUES(board_seq.NEXTVAL, 'test', 'tester', 'testContent', sysdate, 0);

commit;

SELECT * FROM board;