package com.thehandsome.controller;

import org.junit.Before;
import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.MethodSorters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;
import lombok.extern.log4j.Log4j;
import com.thehandsome.service.QnaProductService;
@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
					   "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"})
@FixMethodOrder(MethodSorters.NAME_ASCENDING)
@Log4j
public class QnaProductControllerTest {
	@Autowired
	private WebApplicationContext ctx;
	
	
	private MockMvc moc;
	
	@Autowired
	QnaProductService service;
	
	@Before
	public void setup()  {
		this.moc = MockMvcBuilders.webAppContextSetup(ctx).build();
	}
	@Test
	public void testList()  throws Exception{
		log.info(
				moc.perform(MockMvcRequestBuilders.get("/qnaproduct/list")
				.param("mid", "rhehd002"))
				.andReturn()
				.getModelAndView()
				.getModelMap()
				);
	}


	@Test
	public void testOne_qna()  throws Exception{
		log.info(
				moc.perform(
						MockMvcRequestBuilders.get("/qnaproduct/one_qna")
						.param("qid","43")
						.contentType(MediaType.APPLICATION_JSON)));
	}

	@Test
	public void testInsert_qna()  throws Exception{
		
		log.info(
				moc.perform(MockMvcRequestBuilders.get("/qnaproduct/insert_qna")
				.param("mid", "rhehd002")
				.param("pid", "TH2C3WJC208M")
				.param("Qcontent", "O22C5TTO085W")
				.param("Qtitle", "S")
				.param("Qdate", "2022/05/19"))
				.andReturn()
				.getModelAndView()
				.getModelMap()
				);
	}

	@Test
	public void testDelete_qna()  throws Exception{
		log.info(
				moc.perform(
						MockMvcRequestBuilders.get("/qnasite/delete_qna")
						.param("qid","43")
						.contentType(MediaType.APPLICATION_JSON)));
	}

	@Test
	public void testUpdate_review()  throws Exception{
		log.info(
				moc.perform(
						MockMvcRequestBuilders.get("/qnasite/update_qna")
						.param("qid","43")
						.contentType(MediaType.APPLICATION_JSON)));
	}

}
