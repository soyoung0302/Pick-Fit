CREATE DATABASE PICK_FIT;

-- 크롤링 form 저장 테이블
create table crawling_form(
	id INT NOT NULL AUTO_INCREMENT,
	title VARCHAR(500),
	url VARCHAR(1000),
    meta_tag VARCHAR(2000),
    meta_class VARCHAR(2000),
    c_date datetime NOT NULL DEFAULT current_timestamp,
    PRIMARY KEY(id)
);

-- 크롤링할 url 정보 테이블
create table url_info(
	idx INT NOT NULL AUTO_INCREMENT,
	hostName VARCHAR(500),
	url VARCHAR(1000),
	detail_url VARCHAR(1000),
    c_date datetime NOT NULL DEFAULT current_timestamp,
    PRIMARY KEY(idx)
);

-- 크롤링할 상품 정보 테이블
create table product_info(
	idx INT NOT NULL AUTO_INCREMENT,
    price VARCHAR(100),
    p_name VARCHAR(500),
    width VARCHAR(50),
	flexibility VARCHAR(50),
	seethrough VARCHAR(50),
	lining VARCHAR(50),
	material VARCHAR(50),
	p_img VARCHAR(1000),
	size VARCHAR(500),
	color VARCHAR(500),
    PRIMARY KEY(idx)
);

-- 크롤링 url 결과
create table crawling_url(
	idx INT NOT NULL AUTO_INCREMENT,
	hostName VARCHAR(500),
	url VARCHAR(1000),
	detail_url VARCHAR(1000),
    c_date datetime NOT NULL DEFAULT current_timestamp,
    PRIMARY KEY(idx)
);

-- 크롤링 product 결과
create table crawling_product(
	idx INT NOT NULL AUTO_INCREMENT,
    price VARCHAR(100),
    p_name VARCHAR(500),
    width VARCHAR(50),
	flexibility VARCHAR(50),
	seethrough VARCHAR(50),
	lining VARCHAR(50),
	material VARCHAR(50),
	p_img VARCHAR(1000),
	size VARCHAR(500),
	color VARCHAR(500),
    PRIMARY KEY(idx)
);

-- user 기본정보
create table user_info(
	idx INT NOT NULL AUTO_INCREMENT,
    id VARCHAR(500) not null,
    pw VARCHAR(500) not null,
    userNm VARCHAR(200) not null,
    gender int not null,
    height VARCHAR(50) not null,
    weight VARCHAR(50) not null,
    face_shape int null,
    body_shape int null,
    style int null,
    skin_tone int null,
    hair int null,
    PRIMARY KEY(idx)
);