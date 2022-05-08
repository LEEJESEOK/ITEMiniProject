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
 * 상품 관련 controller test
 * @author 고동현
 */
@RunWith(SpringJUnit4ClassRunner.class)
@FixMethodOrder(MethodSorters.NAME_ASCENDING)
@WebAppConfiguration
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"})
@Log4j
public class ProductControllerTests {
	
	@Autowired
	private WebApplicationContext ctx;
	
	private MockMvc mockMvc;
	
	@Before
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
	}
	
	@Test //상품 상세보기 페이지로 가는 controller 테스트
	public void test01_product_detail() throws Exception {
		log.info(
					mockMvc.perform(MockMvcRequestBuilders.get("/p/detail")
					.param("product_id", "SY2C1WJS740WM2"))
					.andReturn()
					.getModelAndView()
					.getModelMap()
					);
			
	}
	
	@Test //상품 대분류에 따른 조회로 가는 controller 테스트
	public void test02_product_display_large() throws Exception {
		log.info(
					mockMvc.perform(MockMvcRequestBuilders.get("/p/c/large")
					.param("clarge", "여성"))
					.andReturn()
					.getModelAndView()
					.getModelMap()
					);
			
	}
	
	@Test //상품 대분류, 중분류에 따른 조회로 가는 controller 테스트
	public void test03_product_display_medium() throws Exception {
		log.info(
					mockMvc.perform(MockMvcRequestBuilders.get("/p/c/medium")
					.param("clarge", "여성")
					.param("cmedium", "아우터"))
					.andReturn()
					.getModelAndView()
					.getModelMap()
					);
			
	}
	
	@Test //상품 대분류, 중분류, 소분류에 따른 조회로 가는 controller 테스트
	public void test04_product_display_small() throws Exception {
		log.info(
					mockMvc.perform(MockMvcRequestBuilders.get("/p/c/small")
					.param("clarge", "여성")
					.param("cmedium", "아우터")
					.param("csmall",  "재킷"))
					.andReturn()
					.getModelAndView()
					.getModelMap()
					);
			
	}
	
	@Test //주문 완료 페이지로 가는 controller 테스트
	public void test05_ordercomplete() throws Exception {
		log.info(
					mockMvc.perform(MockMvcRequestBuilders.get("/p/ordercomplete"))
					.andReturn()
					.getModelAndView()
					.getModelMap()
					);
			
	}
}
