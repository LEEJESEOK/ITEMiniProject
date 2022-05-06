package com.thehandsome.service;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.util.Date;

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

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@FixMethodOrder(MethodSorters.NAME_ASCENDING)
@Log4j
public class MemberServiceImplTest {

	static long currentTime;

	@Autowired
	MemberService memberService;

	@BeforeClass
	public static void init() {
		currentTime = (new Date()).getTime();
	}

	@Test
	public void test00() {
		log.info(memberService);
		assertNotNull(memberService);
	}

	@Test
	public void test10_joinMember() {
		MemberVO member = new MemberVO();
		member.setMid("service_test" + currentTime);
		member.setMpassword("test");
		member.setMname("new member");
		member.setMemail("service1@test.com");
		member.setMtel("01012345678");
		member.setMzipcode("06013");
		member.setMaddress1("서울특별시 강남구 도산대로 523 한섬빌딩");
		member.setMaddress2("");
		log.info("member : " + member);

		boolean result = memberService.joinMember(member);
		assertTrue(result);
		log.info("test10_isExist : " + result);
	}

	@Test
	public void test20_getMemberInformation() {
		String mid = "service_test" + currentTime;

		MemberVO result = memberService.getMemberInformation(mid);
		assertNotNull(result);
		log.info("test20_getMemberInformation : " + result);
	}

	@Test
	public void test21_isExist() {
		String mid = "service_test" + currentTime;
		boolean result = memberService.isExistMemberByMid(mid);
		assertTrue(result);
		log.info("test21_isExist : " + result);
	}
	
	@Test
	public void test22_isValidMember() {
		String mid = "test";
		String mpassword = "test";
		boolean result = memberService.isValidMember(mid, mpassword);
		
		assertTrue(result);
		log.info("test22_isValidMember : " + result);
	}

	@Test
	public void test40_changeMemberInformation() {
		MemberVO member = new MemberVO();
		member.setMid("service_test" + currentTime);
		member.setMpassword("updatetest");
		member.setMname("update member");
		member.setMemail("service2@test.com");
		member.setMtel("01044448888");
		member.setMzipcode("03077");
		member.setMaddress1("서울특별시 종로구 창경궁로 254");
		member.setMaddress2("701");
		member.setMmileage(10);

		boolean result = memberService.changeMemberInformation(member);
		assertTrue(result);
		log.info("test21_isExist : " + result);
	}

	@Test
	public void test41_memberSecession() {
		String mid = "service_test" + currentTime;

		boolean result = memberService.memberSecession(mid);
		assertTrue(result);
		log.info("test41_memberSecession : " + result);
	}

	@Test
	public void test99_deleteMember() {
		String mid = "service_test" + currentTime;

		boolean result = memberService.deleteMember(mid);
		assertTrue(result);
		log.info("test99_deleteMember : " + result);
	}

}
