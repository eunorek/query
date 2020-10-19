CREATE TABLE board(
    num number CONSTRAINT board_num_pk PRIMARY KEY,
    title varchar2(1000) NOT NULL,
    writer varchar2(1000) NOT NULL,
    contents varchar2(3000),
    regDate date,
    hit number
);

commit;

insert into board values(1, 'hello', 'admin', 'Wheeeeeeee', SYSDATE, 1);
commit;

SELECT * FROM board;

-- CREATE sequence ½ÃÄö½º¸í 
-- increment by n
-- start with n
-- NOMAXVALUE

CREATE SEQUENCE board_num
INCREMENT BY 1
START WITH 2
NOMAXVALUE
NOCYCLE
NOCACHE;

SELECT * FROM SEQ;

SELECT * FROM board 
WHERE num = 3;




DELETE board where num = 1;
SELECT * FROM board;
commit;












--------------------------------

DROP TABLE board;
DROP sequence board_num;
commit;