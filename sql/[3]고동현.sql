-- 작성자 : 고동현
CREATE OR REPLACE VIEW PRODUCT_DISPLAY_VIEW AS 
  select p.pimg1, p.pimg2, p.pimg3, b.bname, p.pname, p.pprice, c.ccolorname, ps.psize,
p.paveragerate, p.preleasedate, p.pid, b.bno, p.clarge, p.cmedium, p.csmall
from product p, brand b, color c, product_size ps
where p.bno = b.bno and p.pid = c.pid and p.pid = ps.pid;
/
-- 작성자 : 고동현
create or replace procedure sp_cart_insert
(p_mid in my_cart.mid%type,
p_pid in my_cart.pid%type,
p_psize in my_cart.psize%type,
p_pcolor in my_cart.pcolor%type,
p_pamount in my_cart.pamount%type
)
is
begin
	insert into my_cart(mid, pid, psize, pcolor, pamount)
	values(p_mid, p_pid, p_psize, p_pcolor, p_pamount);
end;
/
-- 작성자 : 고동현
create or replace procedure sp_cart_amount_update
(p_pid in my_cart.pid%type, p_pamount in my_cart.pamount%type)
is
begin
	update my_cart set pamount = p_pamount
	where pid = p_pid;
end;
/
-- 작성자 : 고동현
create or replace procedure sp_cart_delete
(p_pid in my_cart.pid%type)
is
begin
	delete from my_cart
	where pid = p_pid;
end;
/
--작성자 : 고동현
create or replace function sf_cart_display
(p_mid in my_cart.mid%type)
return cart_record_table_type
PIPELINED
is
	cart_rec cart_record_type;
begin
	FOR rec IN (
		select c.pid, c.pcolor, c.psize, c.pamount, p.pname, b.bname, p.pprice
		from my_cart c, product p, brand b
		where c.mid = p_mid and c.pid = p.pid and p.bno = b.bno
	) LOOP
		cart_rec := cart_record_type(rec.pid, rec.pcolor, rec.psize, rec.pamount, rec.pname, rec.bname, rec.pprice);
		PIPE ROW(cart_rec);
	END LOOP;

	RETURN;
END;
/
-- 작성자 : 고동현
create or replace function sf_product_display -- 신상품, 베스트 상품 나열
(p_mode in NUMBER)
return product_record_table_type
PIPELINED
is
	product_rec product_record_type;
begin
	CASE p_mode
		WHEN 1 then -- 신상품
			FOR rec IN (
				select *
				from product_display_view
				order by preleasedate desc
			) LOOP
				product_rec := product_record_type(rec.pimg1, rec.pimg2, rec.pimg3,
				rec.bname, rec.pname, rec.pprice, rec.ccolorname, 
				rec.psize, rec.paveragerate, rec.preleasedate, rec.pid, rec.bno,
                rec.clarge, rec.cmedium, rec.csmall);
				PIPE ROW(product_rec);
			END LOOP;
			RETURN;

		WHEN 2 then -- 베스트상품
            FOR rec IN (
				select *
				from product_display_view
                order by paveragerate desc
			) LOOP
				product_rec := product_record_type(rec.pimg1, rec.pimg2, rec.pimg3,
				rec.bname, rec.pname, rec.pprice, rec.ccolorname, 
				rec.psize, rec.paveragerate, rec.preleasedate, rec.pid, rec.bno,
                rec.clarge, rec.cmedium, rec.csmall);
				PIPE ROW(product_rec);
			END LOOP;
			RETURN;
	END CASE;
END;
/
-- 작성자 : 고동현
create or replace function sf_product_detail_display -- 상품 상세보기
(p_pid in product.pid%type)
return product_detail_record_table_type
PIPELINED
is
    product_detail_rec product_detail_record_type;
begin
    FOR rec IN(
        select p.pimg1, p.pimg2, p.pimg3, b.bname, p.pname, 
		p.pprice, p.pid, p.pdetail, c.ccolorname, ps.psize, p.paveragerate
        from product p, color c, brand b, product_size ps
        where p.pid = p_pid and p.pid = c.pid and p.bno = b.bno and p.pid = ps.pid
    ) LOOP
        product_detail_rec := product_detail_record_type(rec.pimg1, rec.pimg2, rec.pimg3,
				rec.bname, rec.pname, rec.pprice, rec.pid, rec.pdetail,
				rec.ccolorname, rec.psize, rec.paveragerate);
        PIPE ROW(product_detail_rec);
    END LOOP;

    RETURN;
END;
/
-- 작성자 : 고동현
create or replace NONEDITIONABLE function sf_product_display_by_brand -- 브랜드별 상품 display
(p_bno in brand.bno%type)
return product_record_table_type
PIPELINED
is
    product_rec product_record_type;
begin
    FOR rec IN(
        select *
        from product_display_view v
        where v.bno = p_bno
    ) LOOP
        product_rec := product_record_type(rec.pimg1, rec.pimg2, rec.pimg3,
				rec.bname, rec.pname, rec.pprice, rec.ccolorname, 
				rec.psize, rec.paveragerate, rec.preleasedate, rec.pid, rec.bno,
                rec.clarge, rec.cmedium, rec.csmall);
        PIPE ROW(product_rec);
    END LOOP;

    RETURN;
END;
/
-- 작성자 : 고동현
create or replace NONEDITIONABLE function sf_product_display_by_brand_color -- 브랜드, 색상별 상품 display
(p_bno in brand.bno%type, p_ccolorname in color.ccolorname%type)
return product_record_table_type
PIPELINED
is
    product_rec product_record_type;
begin
    FOR rec IN(
        select *
        from product_display_view v
        where v.bno = p_bno and v.ccolorname = p_ccolorname
    ) LOOP
        product_rec := product_record_type(rec.pimg1, rec.pimg2, rec.pimg3,
				rec.bname, rec.pname, rec.pprice, rec.ccolorname, 
				rec.psize, rec.paveragerate, rec.preleasedate, rec.pid, rec.bno,
                rec.clarge, rec.cmedium, rec.csmall);
        PIPE ROW(product_rec);
    END LOOP;

    RETURN;
END;
/
-- 작성자 : 고동현
create or replace NONEDITIONABLE function sf_product_display_by_brand_size -- 브랜드, 사이즈별 상품 display
(p_bno in brand.bno%type, p_psize in product_size.psize%type)
return product_record_table_type
PIPELINED
is
    product_rec product_record_type;
begin
    FOR rec IN(
        select *
        from product_display_view v
        where v.bno = p_bno and v.psize = p_psize
    ) LOOP
        product_rec := product_record_type(rec.pimg1, rec.pimg2, rec.pimg3,
				rec.bname, rec.pname, rec.pprice, rec.ccolorname, 
				rec.psize, rec.paveragerate, rec.preleasedate, rec.pid, rec.bno,
                rec.clarge, rec.cmedium, rec.csmall);
        PIPE ROW(product_rec);
    END LOOP;

    RETURN;
END;
/
-- 작성자 : 고동현
create or replace NONEDITIONABLE procedure sp_review_rate_update
(p_pid in product.pid%type)
is
begin
    update product 
    set paveragerate = (select avg(rrate) from review where pid = p_pid)
    where pid = p_pid;
end;
/
-- 작성자 : 고동현
create or replace NONEDITIONABLE function sf_product_display_by_brand_sort -- 브랜드별 신상품, 베스트 상품 나열
(p_mode in NUMBER, p_bno in brand.bno%type)
return product_record_table_type
PIPELINED
is
	product_rec product_record_type;
begin
	CASE p_mode
		WHEN 1 then -- 신상품
			FOR rec IN (
				select *
				from product_display_view v
				where v.bno = p_bno
				order by preleasedate desc
			) LOOP
				product_rec := product_record_type(rec.pimg1, rec.pimg2, rec.pimg3,
				rec.bname, rec.pname, rec.pprice, rec.ccolorname, 
				rec.psize, rec.paveragerate, rec.preleasedate, rec.pid, rec.bno,
                rec.clarge, rec.cmedium, rec.csmall);
				PIPE ROW(product_rec);
			END LOOP;
			RETURN;

		WHEN 2 then -- 베스트상품
            FOR rec IN (
				select *
				from product_display_view v
				where v.bno = p_bno
                order by paveragerate desc
			) LOOP
				product_rec := product_record_type(rec.pimg1, rec.pimg2, rec.pimg3,
				rec.bname, rec.pname, rec.pprice, rec.ccolorname, 
				rec.psize, rec.paveragerate, rec.preleasedate, rec.pid, rec.bno,
                rec.clarge, rec.cmedium, rec.csmall);
				PIPE ROW(product_rec);
			END LOOP;
			RETURN;

		WHEN 3 then -- 가격높은순
            FOR rec IN (
				select *
				from product_display_view v
				where v.bno = p_bno
                order by v.pprice desc
			) LOOP
				product_rec := product_record_type(rec.pimg1, rec.pimg2, rec.pimg3,
				rec.bname, rec.pname, rec.pprice, rec.ccolorname, 
				rec.psize, rec.paveragerate, rec.preleasedate, rec.pid, rec.bno,
                rec.clarge, rec.cmedium, rec.csmall);
				PIPE ROW(product_rec);
			END LOOP;
			RETURN;

		WHEN 4 then -- 가격낮은순
            FOR rec IN (
				select *
				from product_display_view v
				where v.bno = p_bno
                order by v.pprice asc
			) LOOP
				product_rec := product_record_type(rec.pimg1, rec.pimg2, rec.pimg3,
				rec.bname, rec.pname, rec.pprice, rec.ccolorname, 
				rec.psize, rec.paveragerate, rec.preleasedate, rec.pid, rec.bno,
                rec.clarge, rec.cmedium, rec.csmall);
				PIPE ROW(product_rec);
			END LOOP;
			RETURN;

	END CASE;
END;
/
