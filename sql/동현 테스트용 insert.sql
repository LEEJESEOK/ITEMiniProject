insert into category(clarge, cmedium, csmall)
values('남성', '아우터', '자켓');

insert into category(clarge, cmedium, csmall)
values('여성', '팬츠', '데님');

insert into category(clarge, cmedium, csmall)
values('남성', '팬츠', '데님');

insert into category(clarge, cmedium, csmall)
values('남성', '탑', '맨투맨');

insert into brand(bno, bname)
values(1, '꼼데가르송');

insert into brand(bno, bname)
values(2, '리바이스');

insert into brand(bno, bname)
values(3, '아미');

insert into product(pid, bno, clarge, cmedium, csmall, 
pname, pprice, pdetail, pseason, paveragerate, preleasedate)
values('ABCDE', 1, '남성', '아우터', '자켓','고동현자켓',100000,
'고동현이 입은 자켓', '22SS', 2, sysdate);

insert into product(pid, bno, clarge, cmedium, csmall, 
pname, pprice, pdetail, pseason, paveragerate, preleasedate)
values('ABCDF', 2, '여성', '팬츠', '데님','리바이스 여성 청바지',150000,
'고동현여친 청바지', '19FW', 3, sysdate);

insert into product(pid, bno, clarge, cmedium, csmall, 
pname, pprice, pdetail, pseason, paveragerate, preleasedate)
values('ABCDG', 2, '남성', '팬츠', '데님','리바이스 남성 청바지',158000,
'고동현 청바지', '19FW', 4, sysdate);

insert into product(pid, bno, clarge, cmedium, csmall, 
pname, pprice, pdetail, pseason, paveragerate, preleasedate)
values('ABCDH', 3, '남성', '탑', '맨투맨','아미 맨투맨',250000,
'고동현이 입은 맨투맨', '21FW', 5, sysdate);

insert into color(pid, ccolorname)
values('ABCDE', 'red');

insert into color(pid, ccolorname)
values('ABCDF', 'blue');

insert into color(pid, ccolorname)
values('ABCDG', 'blue');

insert into color(pid, ccolorname)
values('ABCDH', 'black');

insert into product_size(pid, psize)
values('ABCDE', 'XL');

insert into product_size(pid, psize)
values('ABCDF', 'XS');

insert into product_size(pid, psize)
values('ABCDG', 'M');

insert into product_size(pid, psize)
values('ABCDH', 'M');

insert into member(mid, mpassword, mname, memail, mtel, 
mzipcode, maddress1, maddress2, mdate, mmileage, menabled)
values('rhehd002', '1234', '고동현', 'rhehd002@naver.com', '01092855358',
'12345', '대구', '성당동', sysdate, 0, 'T');

commit;