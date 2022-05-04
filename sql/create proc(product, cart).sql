CREATE OR REPLACE VIEW product_display_view AS
    SELECT
        p.pimg1,
        p.pimg2,
        p.pimg3,
        b.bname,
        p.pname,
        p.pprice,
        c.ccolorname,
        ps.psize,
        p.paveragerate,
        p.preleasedate
    FROM
        product       p,
        brand         b,
        color         c,
        product_size  ps
    WHERE
            p.bno = b.bno
        AND p.pid = c.pid
        AND p.pid = ps.pid;
/    

CREATE OR REPLACE TYPE product_record_type AS OBJECT (
    pimg1         VARCHAR2(500),
    pimg2         VARCHAR2(500),
    pimg3         VARCHAR2(500),
    bname         VARCHAR2(50),
    pname         VARCHAR2(50),
    pprice        NUMBER,
    ccolorname    VARCHAR2(10),
    psize         VARCHAR2(10),
    paveragerate  NUMBER,
    preleasedate  DATE
);
/

CREATE OR REPLACE TYPE product_record_table_type AS
    TABLE OF product_record_type;
/

CREATE OR REPLACE FUNCTION sf_product_display -- 신상품, 베스트 상품 나열
 (
    p_mode IN NUMBER
) RETURN product_record_table_type
    PIPELINED
IS
    product_rec product_record_type;
BEGIN
    CASE p_mode
        WHEN 1 THEN -- 신상품
            FOR rec IN (
                SELECT
                    *
                FROM
                    product_display_view
                ORDER BY
                    preleasedate DESC
            ) LOOP
                product_rec := product_record_type(rec.pimg1, rec.pimg2, rec.pimg3, rec.bname, rec.pname,
                                                  rec.pprice, rec.ccolorname, rec.psize,
                                                  rec.paveragerate,
                                                  rec.preleasedate);

                PIPE ROW ( product_rec );
            END LOOP;

            RETURN;
        WHEN 2 THEN -- 베스트상품
            FOR rec IN (
                SELECT
                    *
                FROM
                    product_display_view
                ORDER BY
                    paveragerate DESC
            ) LOOP
                product_rec := product_record_type(rec.pimg1, rec.pimg2, rec.pimg3, rec.bname, rec.pname,
                                                  rec.pprice, rec.ccolorname, rec.psize,
                                                  rec.paveragerate,
                                                  rec.preleasedate);

                PIPE ROW ( product_rec );
            END LOOP;

            RETURN;
    END CASE;
END;
/

CREATE OR REPLACE FUNCTION sf_product_display_by_brand -- 브랜드별 상품 display

 (
    p_bname IN brand.bname%TYPE
) RETURN product_record_table_type
    PIPELINED
IS
    product_rec product_record_type;
BEGIN
    FOR rec IN (
        SELECT
            *
        FROM
            product_display_view v
        WHERE
            v.bname = p_bname
    ) LOOP
        product_rec := product_record_type(rec.pimg1, rec.pimg2, rec.pimg3, rec.bname, rec.pname,
                                          rec.pprice, rec.ccolorname, rec.psize,
                                          rec.paveragerate,
                                          rec.preleasedate);

        PIPE ROW ( product_rec );
    END LOOP;

    RETURN;
END;
/

CREATE OR REPLACE FUNCTION sf_product_display_by_brand_sort -- 브랜드별 신상품, 베스트 상품 나열

 (
    p_mode   IN  NUMBER,
    p_bname  IN  brand.bname%TYPE
) RETURN product_record_table_type
    PIPELINED
IS
    product_rec product_record_type;
BEGIN
    CASE p_mode
        WHEN 1 THEN -- 신상품
            FOR rec IN (
                SELECT
                    *
                FROM
                    product_display_view v
                WHERE
                    v.bname = p_bname
                ORDER BY
                    preleasedate DESC
            ) LOOP
                product_rec := product_record_type(rec.pimg1, rec.pimg2, rec.pimg3, rec.bname, rec.pname,
                                                  rec.pprice, rec.ccolorname, rec.psize,
                                                  rec.paveragerate,
                                                  rec.preleasedate);

                PIPE ROW ( product_rec );
            END LOOP;

            RETURN;
        WHEN 2 THEN -- 베스트상품
            FOR rec IN (
                SELECT
                    *
                FROM
                    product_display_view v
                WHERE
                    v.bname = p_bname
                ORDER BY
                    paveragerate DESC
            ) LOOP
                product_rec := product_record_type(rec.pimg1, rec.pimg2, rec.pimg3, rec.bname, rec.pname,
                                                  rec.pprice, rec.ccolorname, rec.psize,
                                                  rec.paveragerate,
                                                  rec.preleasedate);

                PIPE ROW ( product_rec );
            END LOOP;

            RETURN;
        WHEN 3 THEN -- 가격높은순
            FOR rec IN (
                SELECT
                    *
                FROM
                    product_display_view v
                WHERE
                    v.bname = p_bname
                ORDER BY
                    v.pprice DESC
            ) LOOP
                product_rec := product_record_type(rec.pimg1, rec.pimg2, rec.pimg3, rec.bname, rec.pname,
                                                  rec.pprice, rec.ccolorname, rec.psize,
                                                  rec.paveragerate,
                                                  rec.preleasedate);

                PIPE ROW ( product_rec );
            END LOOP;

            RETURN;
        WHEN 4 THEN -- 가격낮은순
            FOR rec IN (
                SELECT
                    *
                FROM
                    product_display_view v
                WHERE
                    v.bname = p_bname
                ORDER BY
                    v.pprice ASC
            ) LOOP
                product_rec := product_record_type(rec.pimg1, rec.pimg2, rec.pimg3, rec.bname, rec.pname,
                                                  rec.pprice, rec.ccolorname, rec.psize,
                                                  rec.paveragerate,
                                                  rec.preleasedate);

                PIPE ROW ( product_rec );
            END LOOP;

            RETURN;
    END CASE;
END;
/

CREATE OR REPLACE FUNCTION sf_product_display_by_brand_color -- 브랜드, 색상별 상품 display

 (
    p_bname       IN  brand.bname%TYPE,
    p_ccolorname  IN  color.ccolorname%TYPE
) RETURN product_record_table_type
    PIPELINED
IS
    product_rec product_record_type;
BEGIN
    FOR rec IN (
        SELECT
            *
        FROM
            product_display_view v
        WHERE
                v.bname = p_bname
            AND v.ccolorname = p_ccolorname
    ) LOOP
        product_rec := product_record_type(rec.pimg1, rec.pimg2, rec.pimg3, rec.bname, rec.pname,
                                          rec.pprice, rec.ccolorname, rec.psize,
                                          rec.paveragerate,
                                          rec.preleasedate);

        PIPE ROW ( product_rec );
    END LOOP;

    RETURN;
END;
/

CREATE OR REPLACE FUNCTION sf_product_display_by_brand_size -- 브랜드, 사이즈별 상품 display

 (
    p_bname  IN  brand.bname%TYPE,
    p_psize  IN  product_size.psize%TYPE
) RETURN product_record_table_type
    PIPELINED
IS
    product_rec product_record_type;
BEGIN
    FOR rec IN (
        SELECT
            *
        FROM
            product_display_view v
        WHERE
                v.bname = p_bname
            AND v.psize = p_psize
    ) LOOP
        product_rec := product_record_type(rec.pimg1, rec.pimg2, rec.pimg3, rec.bname, rec.pname,
                                          rec.pprice, rec.ccolorname, rec.psize,
                                          rec.paveragerate,
                                          rec.preleasedate);

        PIPE ROW ( product_rec );
    END LOOP;

    RETURN;
END;
/

CREATE OR REPLACE TYPE product_detail_record_type AS OBJECT (
    pimg1       VARCHAR2(500),
    pimg2       VARCHAR2(500),
    pimg3       VARCHAR2(500),
    bname       VARCHAR2(50),
    pname       VARCHAR2(50),
    pprice      NUMBER,
    pid         VARCHAR2(30),
    pdetail     VARCHAR2(4000),
    ccolorname  VARCHAR2(10),
    psize       VARCHAR2(10)
);
/

CREATE OR REPLACE TYPE product_detail_record_table_type AS
    TABLE OF product_detail_record_type;
/

CREATE OR REPLACE FUNCTION sf_product_detail_display -- 상품 상세보기

 (
    p_pid IN product.pid%TYPE
) RETURN product_detail_record_table_type
    PIPELINED
IS
    product_detail_rec product_detail_record_type;
BEGIN
    FOR rec IN (
        SELECT
            p.pimg1,
            p.pimg2,
            p.pimg3,
            b.bname,
            p.pname,
            p.pprice,
            p.pid,
            p.pdetail,
            c.ccolorname,
            ps.psize
        FROM
            product       p,
            color         c,
            brand         b,
            product_size  ps
        WHERE
                p.pid = p_pid
            AND p.pid = c.pid
            AND p.bno = b.bno
            AND p.pid = ps.pid
    ) LOOP
        product_detail_rec := product_detail_record_type(rec.pimg1, rec.pimg2, rec.pimg3, rec.bname, rec.pname,
                                                        rec.pprice, rec.pid, rec.pdetail,
                                                        rec.ccolorname,
                                                        rec.psize);

        PIPE ROW ( product_detail_rec );
    END LOOP;

    RETURN;
END;
/

CREATE OR REPLACE TYPE cart_record_type AS OBJECT (
    pid      VARCHAR2(30),
    pcolor   VARCHAR2(10),
    psize    VARCHAR2(10),
    pamount  NUMBER,
    pname    VARCHAR2(50),
    bname    VARCHAR2(50),
    pprice   NUMBER
);
/

CREATE OR REPLACE TYPE cart_record_table_type AS
    TABLE OF cart_record_type;
/

CREATE OR REPLACE PROCEDURE sp_cart_insert (
    p_mid      IN  my_cart.mid%TYPE,
    p_pid      IN  my_cart.pid%TYPE,
    p_psize    IN  my_cart.psize%TYPE,
    p_pcolor   IN  my_cart.pcolor%TYPE,
    p_pamount  IN  my_cart.pamount%TYPE
) IS
BEGIN
    INSERT INTO my_cart (
        mid,
        pid,
        psize,
        pcolor,
        pamount
    ) VALUES (
        p_mid,
        p_pid,
        p_psize,
        p_pcolor,
        p_pamount
    );

END;
/

CREATE OR REPLACE PROCEDURE sp_cart_delete (
    p_pid IN my_cart.pid%TYPE
) IS
BEGIN
    DELETE FROM my_cart
    WHERE
        pid = p_pid;

END;
/

CREATE OR REPLACE PROCEDURE sp_cart_amount_update (
    p_pid      IN  my_cart.pid%TYPE,
    p_pamount  IN  my_cart.pamount%TYPE
) IS
BEGIN
    UPDATE my_cart
    SET
        pamount = p_pamount
    WHERE
        pid = p_pid;

END;
/

CREATE OR REPLACE FUNCTION sf_cart_display (
    p_mid IN my_cart.mid%TYPE
) RETURN cart_record_table_type
    PIPELINED
IS
    cart_rec cart_record_type;
BEGIN
    FOR rec IN (
        SELECT
            c.pid,
            c.pcolor,
            c.psize,
            c.pamount,
            p.pname,
            b.bname,
            p.pprice
        FROM
            my_cart  c,
            product  p,
            brand    b
        WHERE
                c.mid = p_mid
            AND c.pid = p.pid
            AND p.bno = b.bno
    ) LOOP
        cart_rec := cart_record_type(rec.pid, rec.pcolor, rec.psize, rec.pamount, rec.pname,
                                    rec.bname, rec.pprice);

        PIPE ROW ( cart_rec );
    END LOOP;

    RETURN;
END;
/