# EMP_ex



#### 조진성(zephyr)





#### 1. 목표

* EMP 테이블을 이용한 사원 관리 웹애플리케이션
* 기본적인 __CRUD__ 기능 구현
* 실제 사용율이 높을 이름, 부서번호, 직책 키워드 __검색__ 기능 구현
<img src="https://user-images.githubusercontent.com/68098214/104686668-072fdc80-5741-11eb-9ac4-666d6e3d09ea.png">

* 각 column별로 __sort__ 기능 구현(오름차, 내림차순 정렬)
<img src="https://user-images.githubusercontent.com/68098214/104686788-43fbd380-5741-11eb-9d20-760fb9c3450a.png">

* Table 형태의 사원 목록과 사원 상세현황을 다른 레이아웃으로 UI 설계   
(insert, update, delete 모두 해당 페이지 안에서 사용할 수 있도록 UI와 기능 설계)   



#### 2. 사용 기술
* Frontend : HTML, CSS, javascript, jQuery, Bootstrap4
* Backend : Spring, SpringJDBC, HikariCP, myBatis, Lombok, Jackson*
* Database : Oracle    



#### 3. Package, Views, Resources 구조
<img src="https://user-images.githubusercontent.com/68098214/104687213-1ebb9500-5742-11eb-889f-7c925f07bb13.png">

* Backend는 일반적인 Spring-mvc 구조에 myBatis를 활용하기 위한 mapper 인터페이스 및 xml 사용
* Frontend는 유지보수를 편하게 하기 위해 view를 담당하는 .jsp 파일과 ajax 및 유효성 검사를 위한 .js파일들을 각각 분리하여 grouping    



#### 4. 메인 페이지 화면
<img src="https://user-images.githubusercontent.com/68098214/104686661-039c5580-5741-11eb-852f-f5c84f594017.JPG">    

#### 5. 주요 기능   
* CRUD
<img src="https://user-images.githubusercontent.com/68098214/104688867-e2d5ff00-5744-11eb-8134-7d76bb46c287.jpg">   

* 검색
<img src="https://user-images.githubusercontent.com/68098214/104688881-e9647680-5744-11eb-9fe2-5e9df1ebeb07.jpg">
