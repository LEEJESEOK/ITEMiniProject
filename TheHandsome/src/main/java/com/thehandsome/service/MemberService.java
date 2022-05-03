package com.thehandsome.service;

import com.thehandsome.domain.MemberVO;

/**
 * 
 * @author "LEE JESEOK"
 *
 */
public interface MemberService {

	/**
	 * 회원가입
	 * 
	 * @param member 회원 정보 VO
	 * @return 정상적으로 가입시 true
	 */
	public boolean joinMember(MemberVO member);

	/**
	 * 
	 * @return
	 */
	public boolean isExistMemberByMid(String mid);

	/**
	 * mid에 해당하는 회원 정보 반환
	 * 
	 * @param mid 회원 ID
	 * @return 회원 정보를 포함한 MemberVO
	 */
	public MemberVO getMemberInformation(String mid);

	/**
	 * 회원 정보 수정
	 * 
	 * @param member 회원 정보 VO
	 * @return 정상적으로 변경시 true
	 */
	public boolean changeMemberInformation(MemberVO member);

	/**
	 * 멤버 enabled 상태 변경<br>
	 * 'T' -&gt; 'F'
	 * 
	 * @param mid 회원 ID
	 * @return 정상적으로 전환시 true
	 */
	public boolean memberSecession(String mid);

	/**
	 * 회원 정보 삭제
	 * 
	 * @param mid 회원 ID
	 * @return 정상적으로 삭제시 true
	 */
	public boolean deleteMember(String mid);
}
