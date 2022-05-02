---- 재고
-- create table stock(
--     pid varchar2(30)
-- );

-- 상품 분류
alter table category drop primary key cascade;
drop table category;
create table category (
    clarge varchar2(50), -- 대분류
    cmedium varchar2(50), -- 중분류
    csmall varchar2(50), -- 소분류
    constraint pk_category primary key (clarge, cmedium, csmall)
);

-- 브랜드
alter table brand drop primary key cascade;
drop table brand;
create table brand(
    bno number,
    bname varchar2(50) not null, -- 브랜드 이름
    constraint pk_brand primary key (bno)
);

-- 상품
alter table product drop primary key cascade;
drop table product;
create table product(
    pid varchar2(30),
    bno number, -- 브랜드
    clarge varchar2(50), -- 대분류
    cmedium varchar2(50), -- 중분류
    csmall varchar2(50), -- 소분류
    pname varchar2(50), -- 상품 이름
    pprice number, -- 상품 가격
    pdetail varchar2(4000), -- 상품 설명
    pseason varchar2(10), -- 시즌
    constraint pk_product primary key (pid),
    constraint fk_product_bno foreign key (bno) references brand(bno) on delete cascade,
    constraint fk_product_category foreign key (clarge, cmedium, csmall) references category(clarge, cmedium, csmall) on delete cascade
);

-- 상품 색상
alter table color drop primary key cascade;
drop table color;
create table color(
    pid varchar2(30), -- 상품 id
    ccolorname varchar2(10), -- 색상 코드
    constraint pk_color primary key(pid, ccolorname),
    constraint fk_color_pid foreign key (pid) references product(pid) on delete cascade
);

---- 쿠폰
-- create table coupon();

---- 이벤트
-- create table event();

-- 회원 등급
alter table grade drop primary key cascade;
drop table grade;
create table grade(
    gname varchar2(100) not null, -- 등급 이름
    gmin number not null,
    gmax number not null,
    gsale number not null,
    constraint pk_grade primary key (gname)
);

-- 회원 정보
alter table member drop primary key cascade;
drop table member;
create table member(
    mid varchar2(100), -- 회원 id
    mpassword varchar2(20) not null, -- 회원 비밀번호
    mname varchar2(50) not null, -- 회원 이름
    memail varchar2(100) not null, -- 회원 이메일
    mtel varchar2(20) not null, -- 회원 전화번호
    mzipcode number, -- 회원 우편번호
    maddress1 varchar2(200), -- 회원 주소
    maddress2 varchar2(200), -- 회원 상세 주소
    mgrade varchar2(100), -- 회원 등급
    mdate date not null, -- 회원 가입 날짜
    mmileage number, -- 회원 보유 마일리지
    menabled varchar2(1) not null, -- 회원 상태 ('t' : active, 'f' : inactive)
    constraint pk_member primary key (mid),
    constraint fk_member_grade foreign key (mgrade) references grade(gname) on delete cascade
);

-- 위시리스트
alter table wish_list drop primary key cascade;
drop table wish_list;
create table wish_list(
    mid varchar2(100), -- 회원 id
    pid varchar2(30), -- 상품 id
    constraint pk_wish_list primary key (mid, pid),
    constraint fk_wish_list_id foreign key (mid) references member(mid) on delete cascade
);

-- 장바구니, 쇼핑백
alter table my_cart drop primary key cascade;
drop table my_cart;
create table my_cart(
    mid varchar2(100), -- 회원 id
    pid varchar2(30), -- 상품 id
    psize varchar2(10), -- 상품 사이즈
    pcolor varchar2(10), -- 상품 색상
    pamount number not null, -- 주문 수량
    constraint pk_my_cart primary key (mid, pid, psize, pcolor),
    constraint fk_my_cart_member foreign key (mid) references member(mid) on delete cascade
);

-- 상품 문의
alter table qna_product drop primary key cascade;
drop table qna_product;
create table qna_product(
    qid number, -- 글 번호
    pid varchar2(30) not null, -- 상품 id
    mid varchar2(100) not null, -- 회원 id
    qtitle varchar2(1000) not null, -- 글 제목
    qcontent varchar2(4000) not null, -- 글 내용
    qdate date not null, -- 작성일
    qmanager varchar2(100), -- 답변한 관리자
    qreplytitle varchar2(1000), -- 답변 제목
    qreplycontent varchar2(4000), -- 답변 내용
    qreplydate date, -- 답변 작성일
    constraint pk_qna_product primary key (qid),
    constraint fk_qna_product_pid foreign key (pid) references product(pid) on delete cascade,
    constraint fk_qna_product_mid foreign key (mid) references member(mid) on delete cascade
);

-- 사이트 문의
alter table qna_site drop primary key cascade;
drop table qna_site;
create table qna_site(
    qid number, -- 글 번호
    mid varchar2(100) not null, -- 회원 id
    qtitle varchar2(1000) not null, -- 글 제목
    qcontent varchar2(4000) not null, -- 글 내용
    qdate date not null, -- 작성일
    qmanager varchar2(100), -- 답변한 관리자
    qreplytitle varchar2(1000), -- 답변 제목
    qreplycontent varchar2(4000), -- 답변 내용
    qreplydate date, -- 답변 작성일
    constraint pk_qna_site primary key (qid),
    constraint fk_qna_site_product_mid foreign key (mid) references member(mid) on delete cascade
);

-- 상품 리뷰
alter table review drop primary key cascade;
drop table review;
create table review(
    rno number, -- 리뷰 id
    mid varchar2(100) not null, -- 작성한 회원 id
    pid varchar2(30) not null, -- 상품 id
    pcolor varchar2(10), -- 상품 색상
    psize varchar2(10), -- 상품 크기
    rdate date, -- 리뷰 작성 날짜
    rrate number, -- 별점
    rcontent varchar2(4000), -- 리뷰 내용
    rimage varchar2(4000), -- 이미지
    constraint pk_review primary key (rno),
    constraint fk_member_mid foreign key (mid) references member(mid) on delete cascade,
    constraint fk_member_pid foreign key (pid) references product(pid) on delete cascade
    --constraint fk_member_pcolor foreign key (pcolor) references color(ccolorname) on delete cascade
);

alter table order_list drop primary key cascade;
drop table order_list;
create table order_list(
    oid varchar2(20),
    mid varchar2(100), -- 회원 id
    ozipcode number not null, -- 주문 우편번호
    oaddress1 varchar2(200) not null, -- 배송지 주소
    oaddress2 varchar2(200), -- 배송지 상세 주소
    oreceiver varchar2(50) not null, -- 받는 사람 이름
    otel varchar2(20) not null, -- 받는 사람 전화번호
    omessage varchar2(40), -- 배송 메시지
    odate date not null, -- 주문 날짜
    ousedmileage number, -- 사용한 마일리지
    opayment number not null, -- 결제 금액
    odiscounted number, -- 할인받은 금액
    constraint pk_order_list primary key (oid)
);

alter table order_item drop primary key cascade;
drop table order_item;
create table order_item(
    oid varchar2(20), -- 주문 id
    pid varchar2(30), -- 상품 id
    ccolorname varchar2(10), -- 상품 색상
    ssize varchar2(10), -- 상품 크기
    oamount number not null, -- 주문 수량
    constraint pk_order_item primary key (oid, pid, ccolorname, ssize),
    constraint fk_order_item_oid foreign key (oid) references order_list(oid) on delete cascade
);