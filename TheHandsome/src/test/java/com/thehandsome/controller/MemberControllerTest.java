package com.thehandsome.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import java.util.HashMap;
import java.util.Map;

import org.junit.Before;
import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.MethodSorters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import lombok.extern.log4j.Log4j;

/**
 * member/login 로그인 정보 입력 <br>
 * member/auth 로그인 처리<br>
 * logout 로그아웃<br>
 * member/joininfoform 회원가입 정보 입력<br>
 * member/isduplid 아이디 중복 확인<br>
 * member/joincomplete 회원가입 완료<br>
 * 
 * 
 * @author JUNELLE
 *
 */
@FixMethodOrder(MethodSorters.NAME_ASCENDING)
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" })
@WebAppConfiguration
@Log4j
public class MemberControllerTest {

	@Autowired
	WebApplicationContext context;

	MockMvc mockMvc;

	@Before
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(context).build();
	}

	@Test
	public void test01_memberLogin() throws Exception {
		log.info("test01_memberLogin");

		log.info(mockMvc.perform(MockMvcRequestBuilders.get("/member/login")).andExpect(status().isOk()).andReturn()
				.getModelAndView().getModelMap());
	}

	@Test
	public void test11_memberAuth() throws Exception {
		log.info("test11_memberAuth");

		String mid = "member";
		String mpassword = "qwerqwer1!";

		Map<String, Object> params = new HashMap<>();
		params.put("mid", mid);
		params.put("mpassword", mpassword);

		log.info(mockMvc
				.perform(MockMvcRequestBuilders.get("/member/login").param("mid", mid).param("mpassword", mpassword))
				.andExpect(status().isOk()).andReturn().getModelAndView());
	}

	@Test
	public void test20_logout() throws Exception {
		log.info(mockMvc.perform(MockMvcRequestBuilders.get("/member/logout")).andExpect(status().isOk()).andReturn()
				.getModelAndView());
	}

	@Test
	public void test30_joinStart() throws Exception {
		log.info(mockMvc.perform(MockMvcRequestBuilders.get("/member/joininfoform").param("id", "member"))
				.andExpect(status().isOk()).andReturn().getModelAndView());
	}

	@Test
	public void test40_isDuplId() throws Exception {

		log.info(mockMvc.perform(MockMvcRequestBuilders.get("/member/joininfoform").param("id", "member"))
				.andExpect(status().isOk()).andReturn().getModelAndView().getModelMap());
	}

	@Test
	public void test31_joinComplete() throws Exception {

		log.info(mockMvc
				.perform(MockMvcRequestBuilders.get("/member/joincomplete")
						.param("id", "test1")
						.param("passwd", "test")
						.param("name", "테스트")
						.param("emailAddress", "email@thehandsome.com")
						.param("mobilePhoneNumber", "01012345678")
						.param("zipcode", "03077")
						.param("address1", "서울특별시 종로구 창경궁로 254"))
				.andExpect(status().isOk()).andReturn().getModelAndView().getView());
	}

}
