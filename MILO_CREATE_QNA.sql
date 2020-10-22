CREATE TABLE qna (
    num NUMBER CONSTRAINT qna_num_pk PRIMARY KEY,
    title VARCHAR2(1000),
    writer VARCHAR2(1000),
    contents VARCHAR2(3000),
    regDate date,
    hit NUMBER,
    ref NUMBER,
    step NUMBER,
    depth NUMBER
);

commit;

CREATE SEQUENCE qna_seq 
start with 1
increment by 1
nomaxvalue
nocycle
nocache;

commit;

INSERT INTO qna VALUES(qna_seq.NEXTVAL, 'test', 'tester', 'testContent', sysdate, 0, 0, 0, 0);

commit;

SELECT * FROM qna;