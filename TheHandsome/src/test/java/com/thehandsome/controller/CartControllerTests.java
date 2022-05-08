package com.thehandsome.controller;

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
 * 장바구니 관련 controller test
 * @author 고동현
 */
@RunWith(SpringJUnit4ClassRunner.class)
@FixMethodOrder(MethodSorters.NAME_ASCENDING)
@WebAppConfiguration
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"})
@Log4j
public class CartControllerTests {
	
	@Autowired
	private WebApplicationContext ctx;
	
	private MockMvc mockMvc;
	
	@Before
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
	}
	
	@Test //장바구니 조회 controller 테스트
	public void test01_cart_list() throws Exception {
		log.info(
					mockMvc.perform(MockMvcRequestBuilders.get("/cart/list")
					.param("mid", "rhehd002"))
					.andReturn()
					.getModelAndView()
					.getModelMap()
					);
			
	}
	
	@Test //장바구니 삽입 controller 테스트
	public void test02_cart_insert() throws Exception {
		
		log.info(
					mockMvc.perform(MockMvcRequestBuilders.get("/cart/insert")
					.param("mid", "rhehd002")
					.param("pid", "O22C5TTO085W")
					.param("psize", "S")
					.param("pcolor", "white")
					.param("pamount", "1"))
					.andReturn()
					.getModelAndView()
					.getModelMap()
					);
			
	}
	
	@Test //장바구니 삭제 controller 테스트
	public void test03_cart_delete() throws Exception {
		String resultPage=
					mockMvc.perform(MockMvcRequestBuilders.get("/cart/delete")
					.param("pid", "SY2C1WJS740WM2"))
					.andReturn()
					.getModelAndView()
					.getViewName();
		
		log.info(resultPage);
			
	}
	
	@Test //장바구니 수량 업데이트 controller 테스트
	public void test04_display_brand_sort_new() throws Exception {

		 String resultPage=// 신상품
				mockMvc.perform(MockMvcRequestBuilders.get("/cart/update")
				.param("pid", "O22C5TTO085W")
				.param("pamount", "2"))
				.andReturn()
				.getModelAndView()
				.getViewName();
				
		
		log.info(resultPage);
		
	}
	
}
