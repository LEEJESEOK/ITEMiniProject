package com.thehandsome.controller;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.redirectedUrl;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.junit.Before;
import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.MethodSorters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.converter.json.Jackson2ObjectMapperBuilder;
import org.springframework.mock.web.MockHttpSession;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

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

	MockHttpSession session;

	ObjectMapper objectMapper;

	@Before
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(context).build();
		session = new MockHttpSession();

		objectMapper = Jackson2ObjectMapperBuilder.json().build();
	}

	/**
	 * login 페이지 이동
	 * 
	 * @throws Exception
	 */
	@Test
	public void test01_memberLogin() throws Exception {
		log.info("test01_memberLogin");

		String url = "/member/login";

		assertEquals("login",
				mockMvc.perform(get(url)).andExpect(status().isOk()).andReturn().getModelAndView().getViewName());
	}

	/**
	 * id, 비밀번호를 통해 로그인<br>
	 * session_mid 생성<br>
	 * result 통해 결과 확인<br>
	 * 
	 * @throws Exception
	 */
	@Test
	public void test11_memberAuth() throws Exception {
		log.info("test11_memberAuth");

		String url = "/member/auth.json";

		String mid = "member";
		String mpassword = "qwerqwer1!";

		Map<String, Object> params = new HashMap<>();
		params.put("mid", mid);
		params.put("mpassword", mpassword);

		String paramsBody = objectMapper.valueToTree(params).toString();

		String stringContents = mockMvc
				.perform(get(url).param("mid", mid).session(session).contentType(MediaType.APPLICATION_JSON_UTF8)
						.content(paramsBody))
				.andExpect(status().isOk()).andDo(print()).andReturn().getResponse().getContentAsString();
		log.info("stringContents : " + stringContents);

		JsonNode jsonNode = objectMapper.readTree(stringContents);
		Map<String, Object> resultMap = objectMapper.treeToValue(jsonNode, Map.class);

		assertEquals("exist", ((String) resultMap.get("result")));
		assertEquals(mid, session.getAttribute("session_mid"));
	}

	/**
	 * 로그아웃, 메인페이지로 리다이렉트(302)
	 * 
	 * @throws Exception
	 */
	@Test
	public void test20_logout() throws Exception {
		String url = "/member/logout";

		String viewName = mockMvc.perform(get(url).session(session)).andExpect(redirectedUrl("/")).andDo(print())
				.andReturn().getModelAndView().getViewName();

		assertEquals("redirect:/", viewName);
	}

	/**
	 * 회원가입 정보 입력 페이지 이동<br>
	 * 
	 * @throws Exception
	 */
	@Test
	public void test30_joinStart() throws Exception {
		String url = "/member/joininfoform";

		String viewName = mockMvc.perform(get(url)).andExpect(status().isOk()).andDo(print()).andReturn()
				.getModelAndView().getViewName();

		assertEquals("member/joininfoform", viewName);
	}

	/**
	 * 아이디 중복 확인<br>
	 * result 통해 결과 확인<br>
	 * 
	 * @throws Exception
	 */
	@Test
	public void test40_isDuplId() throws Exception {
		String url = "/member/isduplid.json";

		String id = "member";

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);

		String paramsBody = objectMapper.valueToTree(map).toString();

		String stringContents = mockMvc
				.perform(get(url).contentType(MediaType.APPLICATION_JSON_UTF8).content(paramsBody))
				.andExpect(status().isOk()).andDo(print()).andReturn().getResponse().getContentAsString();

		JsonNode jsonNode = objectMapper.readTree(stringContents);
		Map<String, Object> resultMap = objectMapper.treeToValue(jsonNode, Map.class);
		assertFalse((boolean) resultMap.get("result"));

	}

	@Test
	public void test31_joinComplete() throws Exception {

		String url = "/member/joincomplete";

		String id = "ControllerTest " + (new Date());

		log.info(mockMvc
				.perform(get(url).param("id", id).param("passwd", "test").param("name", "테스트")
						.param("emailAddress", "email@thehandsome.com").param("mobilePhoneNumber", "01012345678")
						.param("zipcode", "03077").param("address1", "서울특별시 종로구 창경궁로 254"))
				.andDo(print()).andExpect(status().isOk()));
	}
}
