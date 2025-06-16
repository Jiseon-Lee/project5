-- 집반찬연구소 테이블 생성 쿼리
show databases;

CREATE DATABASE banchan CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

use banchan;

CREATE TABLE member (
  username VARCHAR(10),
  userid VARCHAR(10),
  pwd VARCHAR(10),
  email VARCHAR(20),
  phone CHAR(13),
  admin TINYINT DEFAULT 0, -- 0: 사용자, 1: 관리자
  PRIMARY KEY (userid)
);

CREATE TABLE product (
  code INT AUTO_INCREMENT PRIMARY KEY,
  productname VARCHAR(100),
  price DECIMAL(8, 2),
  pictureurl VARCHAR(50),
  description VARCHAR(1000),
  issell char(1) default 'Y'
);

CREATE TABLE board (
  num INT AUTO_INCREMENT PRIMARY KEY,
  userid VARCHAR(30),
  title VARCHAR(50),
  content VARCHAR(1000),
  readcount INT DEFAULT 0,
  writedate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (userid) REFERENCES member (userid)
);

show tables;

select * from member;
select * from product;

update member set admin=1 where userid='admin';

-- 회원정보 테이블
create table t_member_info (
	mi_id varchar(20) primary key,					-- 아이디
	mi_pw varchar(20) not null,						-- 비밀번호
	mi_name varchar(20) not null,					-- 이름
	mi_gender char(1) default '1',					-- 성별
	mi_birth char(10),								-- 생년월일
	mi_phone varchar(13),							-- 전화번호
	mi_email varchar(50),							-- 이메일
	mi_isad char(1) default 'y',					-- 광고수신여부
	mi_date datetime default current_timestamp,		-- 가입일
	mi_lastlogin datetime,							-- 최종 로그인일자
	mi_status char(1) default 'a'					-- 상태
);



-- 상품 분류 테이블
create table t_product_ctgr (
	pc_id char(2) primary key,		-- 대분류 코드
	pc_name varchar(20) not null	-- 대분류 이름
);

-- 상품 태그 정보 테이블
create table t_product_tag (
	pt_id char(2) auto_increment,	-- 태그 코드
	pt_name varchar(10) not null	-- 태그 이름
);

-- 상품(반찬)정보 테이블
create table t_product_info (
	pi_idx int auto_increment,						-- 일련번호
	pi_id char(4) primary key,						-- 상품아이디
	pc_id char(2),									-- 분류 코드
	pi_name varchar(20) not null,					-- 상품명
	pi_cost int default 0,							-- 원가
	pi_discount int default 0,						-- 할인율
	pi_price int default 0,							-- 가격
	pi_thumb varchar(50) not null,					-- 썸네일
-- 	pi_img1 varchar(50),							-- 이미지1
-- 	pi_img2 varchar(50),							-- 이미지2
-- 	pi_img3 varchar(50),							-- 이미지3
-- 	pi_summary varchar(100) not null, 				-- 한줄설명
-- 	pi_detail text,									-- 상세설명
-- 	pi_volume varchar(50),							-- 용량
-- 	pi_expire varchar(50),							-- 유통기한
-- 	pi_ingredient text,								-- 원재료명 및 함량
-- 	pi_storage varchar(50),							-- 보관방법(취급방법)
-- 	pi_foodtype varchar(50),						-- 식품의 유형
-- 	pi_package varchar(50),							-- 포장재질
-- 	pi_reportcode text,								-- 품목보고번호
-- 	pi_readcnt int default 0,						-- 조회수
-- 	pi_review int default 0,						-- 리뷰개수
-- 	pi_isview char(1) default 'n',					-- 게시여부
	pi_issell char(1) default 'y',					-- 판매여부
	pi_date datetime default current_timestamp		-- 등록일
-- 	ai_idx int, 									-- 관리자번호
-- 	pi_lastdate datetime default current_timestamp,	-- 최종수정일
-- 	ai_idx2 int										-- 최종수정자
);










