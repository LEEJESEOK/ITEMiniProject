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
	 * 
	 * @param String mid 회원 id
	 * @return mid가 member 등록되어 있으면 true
	 */
	boolean isExistMemberByMid(String mid);

	/**
	 * 회원 정보 조회
	 * 
	 * @param String mid 회원 id
	 * @return 회원 id에 해당하는 회원 정보 반환
	 */
	MemberVO selectMemberInformation(String mid);

	/**
	 * member 테이블 새로운 회원 정보 추가
	 * 
	 * @param MemberVO member 회원 정보
	 * @return 정상적으로 추가시 -1
	 */
	int insertMember(MemberVO member);

	/**
	 * 회원 정보 수정
	 * 
	 * @return 정상적으로 수정시 -1
	 */
	int updateMemberInformation(MemberVO member);

	/**
	 * 회원 탈퇴 menabled 상태 'F'로 수정
	 * 
	 * @param String mid 회원 id
	 * @return 정상적으로 수정시 -1
	 */
	int updateMember2Secession(String mid);

	/**
	 * 회원 정보 삭제
	 * 
	 * @param String mid 회원 id
	 * @return 정상적으로 삭제시 1
	 */
	int deleteMember(String mid);
}
