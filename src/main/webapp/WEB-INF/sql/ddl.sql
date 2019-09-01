ALTER TABLE tb_board DROP CONSTRAINT pk_board;
DROP TABLE tb_board;

CREATE TABLE tb_board (
    num          NUMBER(10) NOT NULL,
    name         VARCHAR2(20) NOT NULL,
    title        VARCHAR2(100) NOT NULL,
    content      CLOB NULL,
    read_count   NUMBER(10) DEFAULT 0 NOT NULL,
    write_date   DATE NOT NULL
);

ALTER TABLE tb_board ADD CONSTRAINT pk_board PRIMARY KEY ( num );

INSERT INTO tb_board VALUES (
    2,
    '유재석',
    '게시물 작성',
    '글 내용',
    0,
    SYSDATE
);

COMMIT;

SELECT * FROM tb_board;
    
