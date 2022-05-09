package com.thehandsome.controller;

import static org.junit.Assert.assertTrue;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;

import java.nio.charset.Charset;
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

	ObjectMapper objectMapper;

	public static final MediaType APPLICATION_JSON_UTF8 = new MediaType(MediaType.APPLICATION_JSON_UTF8,
			Charset.forName("utf-8"));

	@Before
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(context).build();
		log.info(mockMvc);

		objectMapper = Jackson2ObjectMapperBuilder.json().build();

		String mid = "member";
		session = new MockHttpSession();
		session.setAttribute("session_mid", mid);

	}

	@Test
	public void test_passwordReCheck() throws Exception {

		String url = "/common/passwordrecheck.json";

		String pw = "qwerqwer1!";

		Map<String, Object> map = new HashMap<>();
		map.put("pw", pw);

		String body = (new ObjectMapper()).valueToTree(map).toString();
		log.info("body : " + body);

		System.out.println("perform");

		// session 적용
		// responsebody : content()에 string json 데이터 전달
		String stringContents = mockMvc
				.perform(get(url).session(session).contentType(MediaType.APPLICATION_JSON_UTF8).content(body))
				.andReturn().getResponse().getContentAsString();

		JsonNode jsonNode = objectMapper.readTree(stringContents);

		Map resultMap = objectMapper.treeToValue(jsonNode, Map.class);
		assertTrue((boolean) resultMap.get("result"));
	}

}
