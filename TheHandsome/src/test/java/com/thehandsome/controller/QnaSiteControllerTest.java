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
import org.junit.Test;
import com.thehandsome.domain.ReviewVO;
import com.thehandsome.service.ReviewService;

import lombok.extern.log4j.Log4j;
/**
 * 
 * @author "Seungyeon"
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
					   "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"})
@FixMethodOrder(MethodSorters.NAME_ASCENDING)
@Log4j



public class QnaSiteControllerTest {
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
						MockMvcRequestBuilders.get("/qnasite/list")
						.param("pageNum","2")
						.param("amount","10")
						.param("pid","TH2C3WJC208M")).andReturn().getModelAndView().getModelMap());
	}


	@Test
	public void testInsert_qna() throws Exception{
		log.info(
				moc.perform(MockMvcRequestBuilders.get("/qnasite/insert_qna_site")
				.param("mid", "rhehd002")
				.param("Qcontent", "O22C5TTO085W")
				.param("Qtitle", "S")
				.param("pcolor", "white")
				.param("pamount", "1")
				.param("date", "2022/05/09"))
				.andReturn()
				.getModelAndView()
				.getModelMap()
				);
	}

	@Test
	public void testOne_qna_site() throws Exception{
		log.info(
				moc.perform(
						MockMvcRequestBuilders.get("/qnasite/one_qna_site")
						.param("qid","43")
						.contentType(MediaType.APPLICATION_JSON)));
	}

	@Test
	public void testDelete_qna_site() throws Exception{
			log.info(
					moc.perform(
							MockMvcRequestBuilders.get("/qnasite/delete_qna_site")
							.param("qid","43")
							.contentType(MediaType.APPLICATION_JSON)));
	}

	@Test
	public void testUpdate_qna_site() throws Exception{
		log.info(
				moc.perform(
						MockMvcRequestBuilders.get("/qnasite/update_qna_site")
						.param("qid","43")
						.contentType(MediaType.APPLICATION_JSON)));
	}

}
