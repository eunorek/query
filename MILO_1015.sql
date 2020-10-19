select * from board order by num DESC;

delete from board where num = 4;
commit;

-- ������ ����: title, contents
-- UPDATE ���̺�� SET �÷���1=��1, �÷���2=��2, ...
-- WHERE ���ǽ�

UPDATE board SET title='UPDATED!!', contents='UPDATED CONTENTS'
WHERE num = 15;

-- creating member table
CREATE TABLE member(
    num number CONSTRAINT member_num_pk PRIMARY KEY,
    id varchar2(1000) CONSTRAINT member_id_unique UNIQUE,
    pw varchar2(1000) NOT NULL,
    name varchar2(1000),
    email varchar2(1000)
);

CREATE SEQUENCE member_num
INCREMENT BY 1
START WITH 1
NOMAXVALUE
NOCYCLE
NOCACHE;

commit;

INSERT INTO member VALUES(member_num.NEXTVAL, 'id1', 'pw1', 'Helga', 'email1');
INSERT INTO member VALUES(member_num.NEXTVAL, 'id2', 'pw2', 'Fram', 'email2');
INSERT INTO member VALUES(member_num.NEXTVAL, 'id3', 'pw3', 'Josh', 'email3');

commit;
SELECT * FROM member ORDER BY num;

UPDATE member SET pw='12354', name='doldolee', email='email@email.com' WHERE num = 2;
commit;

DELETE FROM member WHERE num = 4;
commit;