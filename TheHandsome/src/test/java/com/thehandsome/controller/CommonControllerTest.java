package com.thehandsome.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import java.nio.charset.Charset;

import org.junit.Before;
import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.MethodSorters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.mock.web.MockHttpSession;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import lombok.extern.log4j.Log4j;

/**
 * Common 컨트롤러 테스트 케이스<br>
 * 패스워드 확인<br>
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
public class CommonControllerTest {

	@Autowired
	WebApplicationContext context;

	MockMvc mockMvc;

	MockHttpSession session;

	public static final MediaType APPLICATION_JSON_UTF8 = new MediaType(MediaType.APPLICATION_JSON_UTF8,
			Charset.forName("utf-8"));

	@Before
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(context).build();

		String mid = "member";
		session = new MockHttpSession();
		session.setAttribute("session_mid", mid);
	}

	@Test
	public void test_passwordReCheck() throws Exception {

		String mid = (String) session.getAttribute("session_mid");
		String mpassword = "qwerqwer1!";
		log.info("mid : " + mid);
		log.info("mpassword : " + mpassword);

		log.info(mockMvc.perform(MockMvcRequestBuilders.get("/common/passwordrecheck").session(session).param("pw", mpassword)).andReturn()
				.getModelAndView().getModelMap());
	}

		
}
