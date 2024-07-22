-- 카타르 아시안컵 데이터

-- 참가팀(국)	(국가명, 조, 감독, 피파랭킹)
-- 선수	(이름, 나이, 포지션, 등번호, 국가)
-- 경기장	(경기장명, 수용인원, 주소)
-- 심판	(이름, 나이, 국적, 포지션)

-- 1. 카타르 아시안컵 데이터베이스a
-- qatar_asian_cup

-- 2. 개발자 계정 생성
-- qatar_developer; / 접근 위치 : 모든곳에서 접근 가능 / 비밀번호 qatar123

-- 3. 테이블 생성
-- 3.1. 참가국 : country (name[가변문자열 30], group_name[가변문자열 5], manager[가변문자열 30], lanking[정수])

-- 3.2. 선수 : player (name[가변문자열 30], age[정수], position[가변문자열 10], uniform_number[정수], country[가변문자열 30])

-- 3.3. 경기장 : stadium(name[가변문자열 50], volume[정수], address[문자열])

-- 3.4. 심판 : referee(name[가변문자열 30], age[정수], country[가변문자열 30], position[가변문자열 10])