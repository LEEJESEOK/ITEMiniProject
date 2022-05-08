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
 * 브랜드별 상품 조회 관련 controller test
 * @author 고동현
 */
@RunWith(SpringJUnit4ClassRunner.class)
@FixMethodOrder(MethodSorters.NAME_ASCENDING)
@WebAppConfiguration
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"})
@Log4j
public class BrandControllerTests {

	@Autowired
	private WebApplicationContext ctx;
	
	private MockMvc mockMvc;
	
	@Before
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
	}
	
	@Test //해당 브랜드별 상품 조회 controller 테스트
	public void test01_display_brand() throws Exception {
		log.info(
					mockMvc.perform(MockMvcRequestBuilders.get("/b")
					.param("bno", "1"))
					.andReturn()
					.getModelAndView()
					.getModelMap()
					);
			
	}
	
	@Test //해당 브랜드별, 색상별  상품 조회 controller 테스트
	public void test02_display_brand_color() throws Exception {
		log.info(
					mockMvc.perform(MockMvcRequestBuilders.get("/b/co")
					.param("bno", "1")
					.param("color", "black"))
					.andReturn()
					.getModelAndView()
					.getModelMap()
					);
			
	}
	
	@Test //해당 브랜드별, 사이즈별 상품 조회 controller 테스트
	public void test03_display_brand_size() throws Exception {
		log.info(
					mockMvc.perform(MockMvcRequestBuilders.get("/b/size")
					.param("bno", "1")
					.param("size", "S"))
					.andReturn()
					.getModelAndView()
					.getModelMap()
					);
			
	}
	
	@Test //해당 브랜드별 신상품순 controller 테스트
	public void test04_display_brand_sort_new() throws Exception {

		log.info( // 신상품
				mockMvc.perform(MockMvcRequestBuilders.get("/b/sort")
				.param("bno", "1")
				.param("mode", "1"))
				.andReturn()
				.getModelAndView()
				.getModelMap()
				);
		
	}
	
	@Test //해당 브랜드별 베스트순 controller 테스트
	public void test05_display_brand_sort_best() throws Exception {

		log.info( // 신상품
				mockMvc.perform(MockMvcRequestBuilders.get("/b/sort")
				.param("bno", "1")
				.param("mode", "2"))
				.andReturn()
				.getModelAndView()
				.getModelMap()
				);
		
	}
	
	@Test //해당 브랜드별 높은가격순 controller 테스트
	public void test06_display_brand_sort_price() throws Exception {

		log.info( // 신상품
				mockMvc.perform(MockMvcRequestBuilders.get("/b/sort")
				.param("bno", "1")
				.param("mode", "3"))
				.andReturn()
				.getModelAndView()
				.getModelMap()
				);
	}
	
	@Test //해당 브랜드별 낮은가격순 controller 테스트
	public void test07_display_brand_sort_price_low() throws Exception {

		log.info( // 신상품
				mockMvc.perform(MockMvcRequestBuilders.get("/b/sort")
				.param("bno", "1")
				.param("mode", "4"))
				.andReturn()
				.getModelAndView()
				.getModelMap()
				);
		
	}
}
