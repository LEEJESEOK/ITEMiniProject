package com.thehandsome.service;

import org.apache.ibatis.annotations.Param;

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
	 * @return 해당하는 id가 있으면 true
	 */
	public boolean isExistMemberByMid(String mid);

	/**
	 * 회원 id, password를 통해 계정 확인
	 * 
	 * @param mid
	 * @param mpassword
	 * @return 일치하는 계정이 있으면 true
	 */
	public boolean isValidMember(String mid, String mpassword);

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
