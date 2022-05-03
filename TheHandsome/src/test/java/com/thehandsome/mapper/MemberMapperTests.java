package com.thehandsome.mapper;

import org.junit.AfterClass;
import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.MethodSorters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.thehandsome.domain.MemberVO;

import lombok.Setter;
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
	MemberMapper mapper;

//	@Test
	public void test01_mapper() {
		log.info(mapper);
	}

	@Test
	public void test02_insertMember() {
//		MemberVO member = new MemberVO("test", "test", "테스트 사용자", "test@test.com", "01012345678", "03077",
//				"서울특별시 종로구 창경궁로 254", "701", null, 0, "T");
		MemberVO member = new MemberVO();
		member.setMid("test");
		member.setMpassword("test");
		member.setMname("테스트 사용자");
		member.setMemail("test@test.com");
		member.setMtel("01012345678");
		member.setMzipcode("03077");
		member.setMaddress1("서울특별시 종로구 창경궁로 254");
		member.setMaddress2("701");
		log.info("member : " + member);

		log.info(mapper.insertMember(member));
	}

	@Test
	public void test03_selectMemberInformation() {
		MemberVO member = mapper.selectMemberInformation("test");

		log.info("read member : " + member);
	}

	@Test
	public void test04_updateMemberInformation() {
		MemberVO member = new MemberVO();
		member.setMid("test");
		member.setMpassword("updatetest");
		member.setMname("수정한 사용자");
		member.setMemail("test@test.com");
		member.setMtel("01044448888");
		member.setMzipcode("03077");
		member.setMaddress1("서울특별시 종로구 창경궁로 254");
		member.setMaddress2("701");
		member.setMgrade("");
		member.setMmileage(10);

		log.info("secession : " + mapper.updateMemberInformation(member));
	}

	@Test
	public void test05_updateMember2Secession() {
		log.info("secession : " + mapper.updateMember2Secession("test"));
	}

	@Test
	public void test99_deleteMember() {
		log.info("delete : " + mapper.deleteMember("test"));
	}
}
