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

