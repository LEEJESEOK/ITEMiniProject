package com.thehandsome.mapper;

import static org.junit.Assert.assertNotNull;

import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.MethodSorters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.thehandsome.domain.MemberVO;

import lombok.extern.log4j.Log4j;

/**
 * MemberMapper 테스트 클래스 insert, select, update, delete test
 * 
 * @author "LEE JESEOK"
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@FixMethodOrder(MethodSorters.NAME_ASCENDING)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class MemberMapperTests {
	@Autowired
	MemberMapper memberMapper;

	@Test
	public void test00_mapper() {
		log.info(memberMapper);
		assertNotNull(memberMapper);
	}

	@Test
	public void test10_isExistMemberByMid() {
		log.info("isExistMemberByMid");
		String mid = "mapper_test";

		log.info("isExistMemberByMid : " + memberMapper.isExistMemberByMid(mid));
	}

	@Test
	public void test20_insertMember() {
//		MemberVO member = new MemberVO("test", "test", "테스트 사용자", "test@test.com", "01012345678", "03077",
//				"서울특별시 종로구 창경궁로 254", "701", null, 0, "T");
		MemberVO member = new MemberVO();
		member.setMid("mapper_test");
		member.setMpassword("mapper_test");
		member.setMname("테스트");
		member.setMemail("mapper@test.com");
		member.setMtel("01012345678");
		member.setMzipcode("03077");
		member.setMaddress1("서울특별시 종로구 창경궁로 254");
		member.setMaddress2("701");
		log.info("member : " + member);

		log.info("insertMember : " + memberMapper.insertMember(member));
	}

	@Test
	public void test21_isExistMemberByMid() {
		log.info("isExistMemberByMid");
		String mid = "mapper_test";
		log.info("isExistMemberByMid : " + memberMapper.isExistMemberByMid(mid));
	}

	@Test
	public void test30_selectMemberInformation() {
		String mid = "mapper_test";
		MemberVO member = memberMapper.selectMemberInformation(mid);
		log.info("selectMemberInformation : " + member);
	}

	@Test
	public void test40_updateMemberInformation() {
		MemberVO member = new MemberVO();
		member.setMid("mapper_test");
		member.setMpassword("updatetest");
		member.setMname("수정한 사용자");
		member.setMemail("test@test.com");
		member.setMtel("01044448888");
		member.setMzipcode("03077");
		member.setMaddress1("서울특별시 종로구 창경궁로 254");
		member.setMaddress2("701");
		member.setMgrade("");
		member.setMmileage(10);

		log.info("updateMemberInformation : " + memberMapper.updateMemberInformation(member));
	}

	@Test
	public void test41_updateMember2Secession() {
		String mid = "mapper_test";

		log.info("updateMember2Secession : " + memberMapper.updateMember2Secession(mid));
	}

	@Test
	public void test99_deleteMember() {
		String mid = "mapper_test";

		log.info("deleteMember : " + memberMapper.deleteMember(mid));
	}
}
