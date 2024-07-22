USE practice_sql;
-- 데이터 조작어 (DML)
-- 테이블에 레코드를 삽입, 조회, 수정, 삭제할 때 사용

-- INSERT : 테이블에 레코드를 삽입하는 명령어

-- 1. 모든 컬럼에 대하여 삽입
-- INSERT INTO 테이블명 VALUES (데이터1, 데이터2, ...);
-- 테이블 구조의 컬럼 순서에 맞게 모든 데이터를 입력해야함
INSERT INTO example_table
VALUES ('데이터1', '데이터2');
-- INSERT INTO example_table VALUES ('데이터1', '데이터2');		-- 사용가능

-- 2. 특정 컬럼을 선택하여 삽입
-- INSERT INTO 테이블명 (컬럼명1, 컬럼명2, ...)
-- VALUES (데이터1, 데이터2, ...);
-- *지정한 컬럼의 순서와 데이터의 순서가 일치해야함
INSERT INTO example_table (example_column2)
VALUES ('선택 데이터1');
-- INSERT INTO example_table (example_column2) VALUES ('선택 데이터1');	-- 사용가능

-- SELECT : 테이블에서 레코드를 조회할 때 사용하는 명령어

-- 1. 모든 데이터 조회
-- SELECT * FROM 테이블명;
SELECT * FROM example_table;

-- 2. 특정 컬럼 선택 조회
-- SELECT 컬럼명1, 컬럼명2, ... FROM 테이블명;
SELECT column1 FROM example_table;

-- 3. 특정 레코드 선택 조회
-- SELECT 조회할 컬럼 FROM 테이블명 WHERE 조건;
SELECT * FROM example_table WHERE column1 = '데이터1';

-- UPDATE : 테이블에서 레코드를 수정할 때 사용하는 명령어
-- UPDATE 테이블명 SET 컬럼명1 = 데이터1, ...;
-- UPDATE 테이블명 SET 컬럼명1 = 데이터1, ... WHERE 조건;
UPDATE example_table SET column1 = '수정데이터';
UPDATE example_table SET column1 = '선택 수정 데이터' WHERE example_column2 = '데이터2';

-- DELETE : 테이블에서 레코드를 삭제할 때 사용하는 명령어
-- DELETE FROM 테이블명 WHERE 조건;
DELETE FROM example_table WHERE column1 = '수정데이터';

-- DELETE FROM 테이블명;	*모든 레코드(자료)는 삭제되지만 데이터구조는 삭제되지 않는다
DELETE FROM example_table;

CREATE TABLE auto_table (
	idx INT PRIMARY KEY AUTO_INCREMENT,
    num INT
);

-- DROP TABLE : DDL 테이블 구조 전체를 제거				*테이블 사라짐
-- TRUNCATE TABLE : DDL 테이블 구조만 남기고 상태를 초기화	*테이블 안사라짐
-- DELETE FROM : DML 테이블 레코드만 제거				*테이블 안사라짐

INSERT INTO auto_table (num) VALUES (0);
SELECT * FROM auto_table;

DELETE FROM auto_table;
TRUNCATE TABLE auto_table;	-- TRUNCATE TABLE 테이블명; *테이블의 구조를 초기상태로 되돌림(당연히 레코드값들도 삭제)

