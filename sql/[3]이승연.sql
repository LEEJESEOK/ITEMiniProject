--Procedure--   
--작성자 : 이승연 --
create or replace NONEDITIONABLE PROCEDURE delete_qna (
    p_qid qna_product.qid%TYPE
) IS
BEGIN
    DELETE FROM qna_product
    WHERE
        qid = p_qid;

    COMMIT;
END;
/
create or replace NONEDITIONABLE PROCEDURE delete_qna_site (
    p_qid qna_site.qid%TYPE
) IS
BEGIN
    DELETE FROM qna_site
    WHERE
        qid = p_qid;

    COMMIT;
END;
/
create or replace NONEDITIONABLE PROCEDURE delete_review (
    p_rno review.rno%TYPE
) IS
BEGIN
    DELETE FROM review
    WHERE
        rno = p_rno;

    COMMIT;
END;
/
create or replace NONEDITIONABLE PROCEDURE insert_qna (
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
create or replace NONEDITIONABLE PROCEDURE insert_qna_site (
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
create or replace NONEDITIONABLE PROCEDURE insert_review (
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

create or replace NONEDITIONABLE PROCEDURE update_qna (
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
create or replace NONEDITIONABLE PROCEDURE update_qna_site (
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
create or replace NONEDITIONABLE PROCEDURE update_review (
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
-------------------함수---------------------------------------

create or replace NONEDITIONABLE FUNCTION qna_list_display (
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
create or replace NONEDITIONABLE FUNCTION qna_list_one_display (
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
create or replace NONEDITIONABLE FUNCTION qna_site_list_display (
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
create or replace NONEDITIONABLE FUNCTION qna_site_list_one_display (
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
create or replace NONEDITIONABLE FUNCTION review_list_display (
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
create or replace NONEDITIONABLE FUNCTION review_list_one_display (
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