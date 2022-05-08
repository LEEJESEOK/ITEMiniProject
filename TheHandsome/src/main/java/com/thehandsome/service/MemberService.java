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
	 * 회원 id 중복 확인
	 * 
	 * @return 해당하는 id가 없으면 true
	 */
	public boolean isDuplMemberByMid(String mid);

	/**
	 * 회원 계정이 활성 상태인지 확인
	 * 
	 * @param mid
	 * @param mpassword
	 * @return 활성 상태이면 true
	 * @deprecated
	 */
	public boolean isValidMember(String mid);
	
	/**
	 * 
	 * @param mid
	 * @param mpassword
	 * @return 해당하는 회원의 계정 정보
	 */
	public MemberVO getMemberAccountByLogin(String mid, String mpassword);

	/**
	 * mid에 해당하는 회원 정보 반환
	 * 
	 * @param mid 회원 ID
	 * @return 회원 정보를 포함한 MemberVO
	 */
	public MemberVO getMemberInformation(String mid);
	
	/**
	 * mid에 해당하는 회원 비밀번호 변경
	 * 
	 * @param mid
	 * @param mpassword
	 * @return
	 */
	public boolean changeMemberPassword(String mid, String mpassword);

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
