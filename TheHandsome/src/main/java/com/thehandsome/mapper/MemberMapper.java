package com.thehandsome.mapper;

import com.thehandsome.domain.MemberVO;

/**
 * Mapper class for Member table.
 * 
 * @author "LEE JESEOK"
 *
 */
public interface MemberMapper {
	/**
	 * 회원 정보 조회
	 * @param mid
	 * @return 회원 id에 해당하는 회원 정보 반환
	 */
	MemberVO read(String mid);

	/**
	 * 회원 정보 추가
	 * @param member
	 * @return 
	 */
	int registry(MemberVO member);

	/**
	 * 회원 정보 수정
	 * @return
	 */
	int edit(MemberVO member);
	
	/**
	 * 회원 탈퇴
	 * menabled 상태 'F'로 변경
	 * @param mid
	 * @return 
	 */
	int secession(String mid);
	
	/**
	 * 회원 정보 삭제
	 * @param mid
	 * @return
	 */
	int delete(String mid);
}
