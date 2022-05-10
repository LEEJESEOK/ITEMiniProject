package com.thehandsome.mapper;

import java.util.Date;
import java.util.List;

import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.MethodSorters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.thehandsome.domain.QnaSiteVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@FixMethodOrder(MethodSorters.NAME_ASCENDING)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
/**
 * 
 * @author "Seungyeon"
 *
 */
//QnaSiteMapper 테스트
public class QnaSiteMapperTests {
	@Autowired
	QnaSiteMapper mapper;

//	@Test
	public void test01_mapper() {
		log.info(mapper);
	}
	
	@Test
	public void test02_insert() {
		QnaSiteVO vo=new QnaSiteVO();
		
		vo.setMid("isaa1107");
		vo.setQtitle("제목2");
		vo.setQcontent("내용2");
		Date date= new Date();
		vo.setQdate(date);
		
		log.info("test02 " + vo);
		mapper.insert(vo);
		
	}
	
	@Test
	public void test03_select() {
		List vo=(List) mapper.All_select("isaa1107"); //mid(String) 값 삽입
		log.info("test03"+vo);
	}
	
	@Test
	public void test04_read() {
		QnaSiteVO vo=mapper.read(2L); //qid
		log.info("test04"+vo);
	}
	@Test
	public void test05_update() {
		QnaSiteVO vo=new QnaSiteVO();
		vo.setQid(2L);
		vo.setQtitle("제목수정1");		
		vo.setQcontent("제목내용1");
		Date date= new Date();
		int result = mapper.update(vo);
		log.info("test05" + result);
		log.info("test05" + vo);
	}
	
	 @Test public void test05_delete() { 
		 int result=mapper.delete(2L); //qid
		 log.info("result : " + result);
	}
	 
	
}
