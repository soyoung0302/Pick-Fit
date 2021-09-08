# Pick-Fit Project

## 개발환경
- Windows 10 64-bit

### 백엔드
- Python 3.9.7

### 프론트엔드
- Flask

## 빌드 및 실행  방법
```
로컬
python app.py
python run
```

# 프로젝트 설명

## 제목
여기에 들어갈 내용 적어야함

## 제목
여기에 들어갈 내용 적어야함


# Data Set 구축 프로세스

### 1. 크롤링 할 쇼핑몰 선택
### 2. 웹 크롤링으로 상품 데이터 / 리뷰 데이터 뽑아 옴
### 3. Insert DataBase
	[상품 데이터]
	-> 데이터 정제
	[리뷰 데이터]
	-> 데이터 분석 -> 정제

**크롤링**

- 웹 크롤러에서 기존 상용 쇼핑몰이 구축해 둔 의류 속성과 상품데이터를 수집해 DB 구축
- 초기 데이터는 웹 크롤러를 사용하여 설정한 n 개의 상품 데이터 수집
- 쇼핑몰마다 같은 제품도 다르게 표기가 되어 있을 수 있고 상품 업로드시 작성자의 주관이 들어갈 수 있기 때문에 향후 데이터 수집의 로직에도 데이터 교정 후 정제하는 과정이 필요해 보임

**고객의 상품 선호도를 예측**

- 리뷰 데이터에서 분석 및 정제한 내용을 토대로 고객들 사이의 유사성 확보 및 계산하여 노출
- 의류 추천을 위해 그동안의 기존 고객들의 구매내역과 평점 더 나아가 속성에 대한 선호도를 확인할 수 있다.
- 기존 정의했던 나이, 성별, 체형 등등의 정보를 활용할 수 있을지 고민
- 추가적으로 상품 구매에 대한 의사결정까지 필요한 데이터가 무엇이 더 필요한지 어떤 속성이 구매결정에 유의미한 영향을 미치는지 조사는 더 필요해 보임

# Web 프로세스

### 1. 회원가입
	-> 회원가입시 고객 정보 입력 (나이, 성별, 키, 몸무게(체형), 선호 스타일)
	-> 해당 회원의 정보 DB 저장
 
### 2. 로그인
	-> DB에 있는 회원 정보 찾아옴

### 3. 의류추천 로직 시작
#### 3-1 현재 날씨 기반 의류 추천
    -> DB에서 상품 데이터를 적재할 때 해당 의류는 어떤 온도에서 최적화된 의륜지 도 적으면 좋을 것 같음
    ex) 온도 별 옷 추천? -> DB에 의류 정보 넣을 때 해당 옷을 입기 적절한 온도 입력 min 7 / max 14 -> 해당온도 사이에 있으면 노출
    추가로 코디의 경우 코디를 할 경우 (겹치는 옷의 온도도 계산 가능할까 ?) -> 이부분들은 사람마다 느끼는 온도차가 객관적으로 통일화가 필요해 보임
#### 3-2 상황입력
    -> 상황코드 별 해당 코드가 겹치는 의류 정보를 불러옴
    추천받을 상황을 선택해 주세요
    	[데이트, 친구, 면접 ...]
    3-3 장소입력
    -> 장소코드 별 해당 코드가 겹치는 의류 정보를 불러옴
    어디에서 입으실 예정인가요?
    	[놀이동산, 카페, 회사 ...]

# Question
## Q. 3-2, 3-3이 겹칠 수 있나? -> 같은 코드로 처리가 가능?


# [Table schema]

## **Web 관련 Table**
## User_info
    [회원정보 저장] [idx, ID, PW, Name, ...] primary key = idx

## User_Body_Profile
    [회원 신체정보 저장] [idx, height, weight, sex, Preference] primary key = idx

## code_info
    [Code List] [idx, code, description] primary key = code

## **크롤링 관련 Table**
## Clothing_info
    [의류정보 저장 테이블]

## Clothing_img
    [의류 이미지 저장 테이블]

# 참조 문헌
### 옷 추천 시스템 데이터 셋 구축을 위한 텍스트 데이터 마이닝
    - 숭실대학교 대학원 정보통신공학과
    - 숭실대학교 스마트시스템소프트웨어학과
    - https://manuscriptlink-society-file.s3-ap-northeast-1.amazonaws.com/kips/conference/kips2020spring/KIPS_C2020A0074.pdf

### 인공지능에 의한 개인 맞춤 패션 스타일 추천 서비스 사례 연구
    - 이화여자대학교 의류산업학과
    - https://www.koreascience.or.kr/article/JAKO201920461984493.pdf
