package com.thehandsome.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.thehandsome.domain.MemberVO;
import com.thehandsome.mapper.MemberMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

/**
 * 
 * @author "LEE JESEOK"
 *
 */
@Service
@AllArgsConstructor
@Log4j
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberMapper mapper;

	@Override
	public boolean isDuplMemberByMid(String mid) {
		return mapper.isExistMemberByMid(mid);
	}

	@Override
	public boolean joinMember(MemberVO member) {
		return mapper.insertMember(member) == -1;
	}

	@Override
	public boolean isValidMember(String mid) {
		return mapper.isValidMember(mid);
	}

	@Override
	public MemberVO getMemberAccountByLogin(String mid, String mpassword) {
		return mapper.selectMemberByAccount(mid, mpassword);
	}

	@Override
	public MemberVO getMemberInformation(String mid) {
		MemberVO member = mapper.selectMemberInformation(mid);

		return member;
	}

	@Override
	public boolean changeMemberPassword(String mid, String mpassword) {
		return mapper.updateMemberPassword(mid, mpassword) == 1;
	}

	@Override
	public boolean changeMemberInformation(MemberVO member) {
		return mapper.updateMemberInformation(member) == 1;
	}

	@Override
	public boolean memberSecession(String mid) {
		return mapper.updateMember2Secession(mid) == 1;
	}

	@Override
	public boolean deleteMember(String mid) {
		return mapper.deleteMember(mid) == 1;
	}

}
