USE practice_sql;

-- 제약조건 : 데이터베이스 테이블 컬럼에 삽입, 수정, 삭제 시 적용되는 규칙

-- NOT NULL 제약조건 : 해당 컬럼에 null을 포함하지 못하도록 제약
-- (INSERT, UPDATE)를 사용할 때에 영향을 미칠 수 있음
CREATE TABLE not_null_table (
	null_column INT NULL,
    not_null_column INT NOT NULL
);

-- NOT NULL 제약조건이 걸린 컬럼에 값을 지정하지 않음
INSERT INTO not_null_table (null_column) VALUES (1);

-- NOT NULL 제약조건이 걸린 컬럼에 null을 지정함
INSERT INTO not_null_table VALUES (null, null);

-- 밑의 3개의 코드는 실행가능
INSERT INTO not_null_table VALUES (1, 1);
INSERT INTO not_null_table VALUES (null, 2);
INSERT INTO not_null_table (not_null_column) VALUES (2);

SELECT * FROM not_null_table;

-- NOT NULL 제약조건이 걸린 컬럼은 null로 수정할 수 없음
UPDATE not_null_table SET not_null_column = null;

-- UNIQUE : 해당 컬럼에 중복된 데이터를 포함할 수 없도록 하는 제약
CREATE TABLE unique_table (
	unique_column INT UNIQUE,
    not_unique_column INT
);

INSERT INTO unique_table VALUES(1, 1);
-- UNIQUE 로 지정된 걸럼은 중복된 데이터를 삽입할 수 없음
INSERT INTO unique_table VALUES(1, 1);
INSERT INTO unique_table VALUES(2, 1);

SELECT * FROM unique_table;

-- UNIQUE로 지정된 컬럼은 중복된 데이터로 수정할 수 없음
UPDATE unique_table SET unique_column = 3;	-- 모든 unique_column컬럼의 데이터 값을 3으로 바꿀려고 했었기 때문에 불가능
UPDATE unique_table SET unique_column = 1 WHERE unique_column = 2;