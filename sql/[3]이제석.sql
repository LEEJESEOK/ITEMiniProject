/*
MEMBER 테이블에 새로운 사용자 정보를 삽입하는 프로시저
*/
create or replace NONEDITIONABLE PROCEDURE sp_member_insert (
    p_id       member.mid%TYPE,
    p_password member.mpassword%TYPE,
    p_name     member.mname%TYPE,
    p_email    member.memail%TYPE,
    p_tel      member.mtel%TYPE DEFAULT NULL,
    p_zipcode  member.mzipcode%TYPE DEFAULT NULL,
    p_address1 member.maddress1%TYPE DEFAULT NULL,
    p_address2 member.maddress2%TYPE DEFAULT NULL
) IS
BEGIN
    INSERT INTO member (
        mid, mpassword, mname, memail, mtel, 
        mzipcode, maddress1, maddress2,
        mgrade, mdate, mmileage, menabled
    ) VALUES (
        p_id, p_password, p_name, p_email, p_tel, 
        p_zipcode, p_address1, p_address2, 
        NULL, sysdate, 0, 'T'
    );

    COMMIT;
END;
/