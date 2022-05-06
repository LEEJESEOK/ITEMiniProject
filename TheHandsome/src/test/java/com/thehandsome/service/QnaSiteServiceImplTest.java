package com.thehandsome.service;

import static org.junit.Assert.*;

import org.junit.Test;
import java.util.Date;

import org.junit.BeforeClass;
import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.MethodSorters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.thehandsome.domain.MemberVO;
import com.thehandsome.domain.QnaSiteVO;

import lombok.extern.log4j.Log4j;
/**
 * 
 * @author "Seungyeon"
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@FixMethodOrder(MethodSorters.NAME_ASCENDING)
@Log4j
public class QnaSiteServiceImplTest {
	
	@Autowired
	QnaSiteService service;
	@Test
	public void testSite_all_select() {
		service.site_all_select("rhehd002");
	}

	@Test
	public void testSite_read() {
		service.site_read(46L);
	}

	@Test
	public void testSite_insert() {
		QnaSiteVO vo=new QnaSiteVO();
		
		vo.setMid("isaa1107");
		vo.setQtitle("제목123");
		vo.setQcontent("내용123");
		Date date= new Date();
		vo.setQdate(date);
		
		log.info("test_insert:"+vo);
		service.site_insert(vo);
	}

	

	@Test
	public void testSite_update() {
		QnaSiteVO vo=new QnaSiteVO();
		vo.setQid(25L);
		vo.setMid("isaa1107");
		vo.setQtitle("수정입니다.");
		vo.setQcontent("수정입니다.");
		Date date= new Date();
		vo.setQdate(date);
		log.info("test_update:"+vo);
		service.site_update(vo);
	}
	
	@Test
	public void testSite_delete() {
		service.site_delete(25L);
	}
	
	
	

}
