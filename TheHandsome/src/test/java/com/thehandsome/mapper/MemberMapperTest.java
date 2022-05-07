package com.thehandsome.mapper;

import static org.junit.Assert.assertNotNull;

import java.util.Date;

import org.apache.ibatis.annotations.Mapper;
import org.junit.BeforeClass;
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
public class MemberMapperTest {

	static long currentTime;

	@Autowired
	MemberMapper memberMapper;

	@BeforeClass
	public static void init() {
		currentTime = (new Date()).getTime();
	}

	@Test
	public void test00_mapper() {
		log.info(memberMapper);
		assertNotNull(memberMapper);
	}

	@Test
	public void test10_isExistMemberByMid() {
		String mid = "none";

		log.info("isExistMemberByMid : " + memberMapper.isExistMemberByMid(mid));
	}

	@Test
	public void test20_insertMember() {
//		MemberVO member = new MemberVO("test", "test", "테스트 회원", "test@test.com", "01012345678", "03077",
//				"서울특별시 종로구 창경궁로 254", "701", null, 0, "T");
		MemberVO member = new MemberVO();
		member.setMid("mapper_test" + currentTime);
		member.setMpassword("test");
		member.setMname("new");
		member.setMemail("mapper@test.com");
		member.setMtel("01012345678");
		member.setMzipcode("03077");
		member.setMaddress1("서울특별시 종로구 창경궁로 254");
		member.setMaddress2("701");
		log.info("member : " + member);

		log.info("insertMember : " + memberMapper.insertMember(member));
	}

	@Test
	public void test22_isValidMember() {
		log.info("isValidMember");
		String mid = "mapper_test" + currentTime;

		log.info("isValidMember : " + memberMapper.isValidMember(mid));
	}

	@Test
	public void test30_selectMemberInformation() {
		String mid = "mapper_test" + currentTime;
		MemberVO member = memberMapper.selectMemberInformation(mid);
		log.info("selectMemberInformation : " + member);
	}

	@Test
	public void test31_selectMemberByAccount() {
		String mid = "mapper_test" + currentTime;
		String mpassword = "test";

		log.info("selectMemberByAccount : " + memberMapper.selectMemberByAccount(mid, mpassword));
	}

	@Test
	public void test40_updateMemberInformation() {
		MemberVO member = new MemberVO();
		member.setMid("mapper_test" + currentTime);
		member.setMpassword("test");
		member.setMname("update");
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
		String mid = "mapper_test" + currentTime;

		log.info("updateMember2Secession : " + memberMapper.updateMember2Secession(mid));
	}

	@Test
	public void test42_isValidMember() {
		log.info("isValidMember");
		String mid = "test";

		log.info("isValidMember : " + memberMapper.isValidMember(mid));

	}

	@Test
	public void test99_deleteMember() {
		String mid = "mapper_test" + currentTime;

		log.info("deleteMember : " + memberMapper.deleteMember(mid));
	}
}
