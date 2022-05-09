package com.thehandsome.controller;

import static org.junit.Assert.assertEquals;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import java.util.Map;

import org.junit.Before;
import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.MethodSorters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.converter.json.Jackson2ObjectMapperBuilder;
import org.springframework.mock.web.MockHttpSession;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.thehandsome.domain.MemberVO;

import lombok.extern.log4j.Log4j;

/**
 * Mypage 컨트롤러 테스트<br>
 * mypage, infoChange, infoChangePWCheck, updateComplete
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
public class MypageControllerTest {

	@Autowired
	WebApplicationContext context;

	MockMvc mockMvc;

	MockHttpSession session;

	ObjectMapper objectMapper;

	@Before
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(context).build();

		String mid = "member";
		session = new MockHttpSession();
		session.setAttribute("session_mid", mid);

		objectMapper = Jackson2ObjectMapperBuilder.json().build();
	}

	/**
	 * 로그인 되어있을 때 마이페이지로 이동<br>
	 * 
	 * @throws Exception
	 */
	@Test
	public void test00_mypage() throws Exception {
		String url = "/mypage";

		String viewName = mockMvc.perform(get(url).session(session)).andDo(print()).andExpect(status().isOk())
				.andReturn().getModelAndView().getViewName();

		assertEquals("mypage", viewName);
	}

	/**
	 * 로그인 되어있지 않을 때 로그인 페이지로 이동<br>
	 * 
	 * @throws Exception
	 */
	@Test
	public void test00_mypageSessionInvalid() throws Exception {
		String url = "/mypage";

		session.invalidate();

		String viewName = mockMvc.perform(get(url).session(session)).andDo(print()).andExpect(status().isOk())
				.andReturn().getModelAndView().getViewName();
		assertEquals("login", viewName);
	}

	/**
	 * 정보 변경 페이지에서 현재 회원의 정보 전달<br>
	 * 
	 * @throws Exception
	 */
	@Test
	public void test10_infoChange() throws Exception {
		String url = "/mypage/infoChange";

		MemberVO member = new MemberVO();

		Map<String, Object> mapContents = mockMvc.perform(get(url).session(session)).andDo(print())
				.andExpect(status().isOk()).andReturn().getModelAndView().getModel();

		assertEquals(session.getAttribute("session_mid"), mapContents.get("mid"));
	}

}
