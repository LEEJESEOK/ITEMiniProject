package com.thehandsome.controller;




import org.junit.Before;
import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.MethodSorters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import com.thehandsome.service.ReviewService;

import lombok.extern.log4j.Log4j;



@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
					   "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"})
@FixMethodOrder(MethodSorters.NAME_ASCENDING)
@Log4j

public class ReviewControllerTest {
	
	
	@Autowired
	private WebApplicationContext ctx;
	
	@Autowired
	private MockMvc moc;
	
	@Autowired
	ReviewService service;
	
	@Before
	public void setup() {
		this.moc = MockMvcBuilders.webAppContextSetup(ctx).build();
	}
	
	
	@Test
	public void testList() throws Exception{
		log.info(
				moc.perform(
						MockMvcRequestBuilders.get("/review/list")
						.param("pageNum","2")
						.param("amount","10")).andReturn().getModelAndView().getModelMap());	
	}
}


