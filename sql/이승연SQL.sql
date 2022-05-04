CREATE SEQUENCE seq_qna_product START WITH 1;

CREATE SEQUENCE seq_qna_site START WITH 1;

CREATE SEQUENCE seq_review START WITH 1;

CREATE OR REPLACE TYPE qna_record_type AS OBJECT (
    qid            NUMBER,
    pid            VARCHAR2(30),
    mid            VARCHAR2(100),
    qtitle         VARCHAR2(1000),
    qcontent       VARCHAR2(4000),
    qdate          DATE,
    qmanager       VARCHAR2(100),
    qreplytitle    VARCHAR2(1000),
    qreplycontent  VARCHAR2(4000),
    qreplydate     DATE
);
/

CREATE OR REPLACE TYPE qna_record_table_type AS
    TABLE OF qna_record_type; --설정
    
/

CREATE OR REPLACE TYPE qna_site_record_type AS OBJECT (
    qid            NUMBER,
    mid            VARCHAR2(100),
    qtitle         VARCHAR2(1000),
    qcontent       VARCHAR2(4000),
    qdate          DATE,
    qmanager       VARCHAR2(100),
    qreplytitle    VARCHAR2(1000),
    qreplycontent  VARCHAR2(4000),
    qreplydate     DATE
);
/

CREATE OR REPLACE TYPE qna_site_record_table_type AS
    TABLE OF qna_site_record_type; --설정
    
/

CREATE OR REPLACE TYPE review_record_type AS OBJECT (
    rno       NUMBER,
    mid       VARCHAR2(100),
    pid       VARCHAR2(30),
    pcolor    VARCHAR2(10),
    psize     VARCHAR2(10),
    rdate     DATE,
    rrate     NUMBER,
    rcontent  VARCHAR2(4000),
    rimage    VARCHAR2(4000)
);
/

CREATE OR REPLACE TYPE review_record_table_type AS
    TABLE OF review_record_type; --설정
    
/

CREATE OR REPLACE PROCEDURE delete_qna (
    p_qid qna_product.qid%TYPE
) IS
BEGIN
    DELETE FROM qna_product
    WHERE
        qid = p_qid;

    COMMIT;
END;
/

CREATE OR REPLACE PROCEDURE delete_qna_site (
    p_qid qna_site.qid%TYPE
) IS
BEGIN
    DELETE FROM qna_site
    WHERE
        qid = p_qid;

    COMMIT;
END;
/

CREATE OR REPLACE PROCEDURE delete_review (
    p_rno review.rno%TYPE
) IS
BEGIN
    DELETE FROM review
    WHERE
        rno = p_rno;

    COMMIT;
END;
/

CREATE OR REPLACE PROCEDURE insert_qna (
    p_qid            qna_product.qid%TYPE,
    p_pid            qna_product.pid%TYPE,
    p_mid            qna_product.mid%TYPE,
    p_qtitle         qna_product.qtitle%TYPE,
    p_qcontent       qna_product.qcontent%TYPE,
    p_qdate          qna_product.qdate%TYPE,
    p_qmanager       qna_product.qmanager%TYPE,
    p_qreplytitle    qna_product.qreplytitle%TYPE,
    p_qreplycontent  qna_product.qreplycontent%TYPE,
    p_qreplydate     qna_product.qreplydate%TYPE
) IS
BEGIN
    INSERT INTO qna_product (
        qid,
        pid,
        mid,
        qtitle,
        qcontent,
        qdate,
        qmanager,
        qreplytitle,
        qreplycontent,
        qreplydate
    ) VALUES (
        seq_qna_product.NEXTVAL,
        p_pid,
        p_mid,
        p_qtitle,
        p_qcontent,
        p_qdate,
        p_qmanager,
        p_qreplytitle,
        p_qreplycontent,
        p_qreplydate
    );

    COMMIT;
END;
/

CREATE OR REPLACE PROCEDURE insert_qna_site (
    p_qid            qna_site.qid%TYPE,
    p_mid            qna_site.mid%TYPE,
    p_qtitle         qna_site.qtitle%TYPE,
    p_qcontent       qna_site.qcontent%TYPE,
    p_qdate          qna_site.qdate%TYPE,
    p_qmanager       qna_site.qmanager%TYPE,
    p_qreplytitle    qna_site.qreplytitle%TYPE,
    p_qreplycontent  qna_site.qreplycontent%TYPE,
    p_qreplydate     qna_site.qreplydate%TYPE
) IS
BEGIN
    INSERT INTO qna_site (
        qid,
        mid,
        qtitle,
        qcontent,
        qdate,
        qmanager,
        qreplytitle,
        qreplycontent,
        qreplydate
    ) VALUES (
        seq_qna_site.NEXTVAL,
        p_mid,
        p_qtitle,
        p_qcontent,
        p_qdate,
        p_qmanager,
        p_qreplytitle,
        p_qreplycontent,
        p_qreplydate
    );

    COMMIT;
END;
/

CREATE OR REPLACE PROCEDURE insert_review (
    p_rno       review.rno%TYPE,
    p_mid       review.mid%TYPE,
    p_pid       review.pid%TYPE,
    p_pcolor    review.pcolor%TYPE,
    p_psize     review.psize%TYPE,
    p_rdate     review.rdate%TYPE,
    p_rrate     review.rrate%TYPE,
    p_rcontent  review.rcontent%TYPE,
    p_rimage    review.rimage%TYPE
) IS
BEGIN
    INSERT INTO review (
        rno,
        mid,
        pid,
        pcolor,
        psize,
        rdate,
        rrate,
        rcontent,
        rimage
    ) VALUES (
        seq_review.NEXTVAL,
        p_mid,
        p_pid,
        p_pcolor,
        p_psize,
        p_rdate,
        p_rrate,
        p_rcontent,
        p_rimage
    );

    COMMIT;
END;
/

CREATE OR REPLACE PROCEDURE update_qna (
    p_qid       qna_product.qid%TYPE,
    p_qtitle    qna_product.qtitle%TYPE,
    p_qcontent  qna_product.qcontent%TYPE
) IS
BEGIN
    UPDATE qna_product
    SET
        qcontent = p_qcontent,
        qtitle = p_qtitle,
        qdate = sysdate
    WHERE
        qid = p_qid;

    COMMIT;
END;
/

CREATE OR REPLACE PROCEDURE update_qna_site (
    p_qid       qna_site.qid%TYPE,
    p_qtitle    qna_site.qtitle%TYPE,
    p_qcontent  qna_site.qcontent%TYPE
) IS
BEGIN
    UPDATE qna_site
    SET
        qtitle = p_qtitle,
        qcontent = p_qcontent,
        qdate = sysdate
    WHERE
        qid = p_qid;

    COMMIT;
END;
/

CREATE OR REPLACE PROCEDURE update_review (
    p_rno       review.rno%TYPE,
    p_rcontent  review.rcontent%TYPE,
    p_rimage    review.rimage%TYPE,
    p_rrate     review.rrate%TYPE
) IS
BEGIN
    UPDATE review
    SET
        rcontent = p_rcontent,
        rdate = sysdate,
        rrate = p_rrate,
        rimage = p_rimage
    WHERE
        rno = p_rno;

    COMMIT;
END;
/

-- 테이블펑션 

CREATE OR REPLACE FUNCTION qna_list_display (
    p_pid qna_product.pid%TYPE
) RETURN qna_record_table_type
    PIPELINED
IS
    qna_rec qna_record_type;
BEGIN
    FOR rec IN (
        SELECT
            *
        FROM
            qna_product
        WHERE
            pid = p_pid
    ) LOOP
        qna_rec := qna_record_type(rec.qid, rec.pid, rec.mid, rec.qtitle, rec.qcontent,
                                  rec.qdate, rec.qmanager,
                                  rec.qreplytitle,
                                  rec.qreplycontent,
                                  rec.qreplydate);

        PIPE ROW ( qna_rec );
    END LOOP;

    RETURN;
END;
/

CREATE OR REPLACE FUNCTION qna_list_one_display (
    p_qid qna_product.qid%TYPE
) RETURN qna_record_table_type
    PIPELINED
IS
    qna_rec qna_record_type;
BEGIN
    FOR rec IN (
        SELECT
            *
        FROM
            qna_product
        WHERE
            qid = p_qid
    ) LOOP
        qna_rec := qna_record_type(rec.qid, rec.pid, rec.mid, rec.qtitle, rec.qcontent,
                                  rec.qdate, rec.qmanager,
                                  rec.qreplytitle,
                                  rec.qreplycontent,
                                  rec.qreplydate);

        PIPE ROW ( qna_rec );
    END LOOP;

    RETURN;
END;
/

CREATE OR REPLACE FUNCTION qna_site_list_display (
    p_mid qna_site.mid%TYPE
) RETURN qna_site_record_table_type
    PIPELINED
IS
    qna_rec qna_site_record_type;
BEGIN
    FOR rec IN (
        SELECT
            *
        FROM
            qna_site
        WHERE
            mid = p_mid
    ) LOOP
        qna_rec := qna_site_record_type(rec.qid, rec.mid, rec.qtitle, rec.qcontent, rec.qdate,
                                       rec.qmanager,
                                       rec.qreplytitle,
                                       rec.qreplycontent,
                                       rec.qreplydate);

        PIPE ROW ( qna_rec );
    END LOOP;

    RETURN;
END;
/

CREATE OR REPLACE FUNCTION qna_site_list_one_display (
    p_qid qna_site.qid%TYPE
) RETURN qna_site_record_table_type
    PIPELINED
IS
    qna_rec qna_site_record_type;
BEGIN
    FOR rec IN (
        SELECT
            *
        FROM
            qna_site
        WHERE
            qid = p_qid
    ) LOOP
        qna_rec := qna_site_record_type(rec.qid, rec.mid, rec.qtitle, rec.qcontent, rec.qdate,
                                       rec.qmanager,
                                       rec.qreplytitle,
                                       rec.qreplycontent,
                                       rec.qreplydate);

        PIPE ROW ( qna_rec );
    END LOOP;

    RETURN;
END;
/

CREATE OR REPLACE FUNCTION review_list_display (
    p_pid review.pid%TYPE
) RETURN review_record_table_type
    PIPELINED
IS
    review_rec review_record_type;
BEGIN
    FOR rec IN (
        SELECT
            *
        FROM
            review
        WHERE
            pid = p_pid
    ) LOOP
        review_rec := review_record_type(rec.rno, rec.mid, rec.pid, rec.pcolor, rec.psize,
                                        rec.rdate, rec.rrate,
                                        rec.rcontent,
                                        rec.rimage);

        PIPE ROW ( review_rec );
    END LOOP;

    RETURN;
END;
/

CREATE OR REPLACE FUNCTION review_list_one_display (
    p_rno review.rno%TYPE
) RETURN review_record_table_type
    PIPELINED
IS
    review_rec review_record_type;
BEGIN
    FOR rec IN (
        SELECT
            *
        FROM
            review
        WHERE
            rno = p_rno
    ) LOOP
        review_rec := review_record_type(rec.rno, rec.mid, rec.pid, rec.pcolor, rec.psize,
                                        rec.rdate, rec.rrate,
                                        rec.rcontent,
                                        rec.rimage);

        PIPE ROW ( review_rec );
    END LOOP;

    RETURN;
END;
/