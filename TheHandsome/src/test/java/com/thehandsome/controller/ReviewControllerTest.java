package com.thehandsome.controller;

import org.junit.Before;
import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.MethodSorters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import com.thehandsome.domain.ReviewVO;
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
						.param("amount","10")
						.param("pid","TH2C3WJC208M")).andReturn().getModelAndView().getModelMap());	
	}

	@Test
	public void testOne_review() throws Exception{
		log.info(
				moc.perform(
						MockMvcRequestBuilders.get("/review/one_review")
						.param("rno","43")
						.contentType(MediaType.APPLICATION_JSON)));
						
	}


	@Test
	public void testCreate() throws Exception{
		log.info(
				moc.perform(
						MockMvcRequestBuilders.get("/review/create")
						.param("pid","TH2C3WJC208M")).andReturn().getModelAndView().getModelMap());	
	}

	@Test
	public void testInsert_review() throws Exception{
		ReviewVO vo = new ReviewVO();
		log.info(
				moc.perform(
						MockMvcRequestBuilders.get("/review/one_review")
						.param("map","43")).andReturn().getModelAndView().getModelMap());	
	}

	@Test
	public void testDelete_review() throws Exception{
		log.info(
				moc.perform(
						MockMvcRequestBuilders.get("/review/delete_review")
						.param("rno","43")));	
	}

	@Test
	public void testUpdate_review() throws Exception{
		log.info(
				moc.perform(
						MockMvcRequestBuilders.get("/review/update_review")
						.param("rno","43")).andReturn().getModelAndView().getModelMap());	
	}

}
