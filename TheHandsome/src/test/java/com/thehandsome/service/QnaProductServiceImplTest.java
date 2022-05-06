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
import com.thehandsome.domain.QnaProductVO;

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
public class QnaProductServiceImplTest {
	
	@Autowired
	QnaProductService service;
	
	@Test
	public void testQna_insert() {
		QnaProductVO qnaproductVO = new QnaProductVO(); //첫번째 데이터 삽입
		
		qnaproductVO.setMid("rhehd002");
		qnaproductVO.setPid("ABCDE");
		qnaproductVO.setQtitle("제목1입니다.");
		qnaproductVO.setQcontent("내용1입니다.");
		qnaproductVO.setQdate(new Date());
		log.info("test_insert :" + qnaproductVO);
		service.qna_insert(qnaproductVO);
		
		
	}
	
	
	@Test
	public void testQna_all_select() {
		log.info("test_all_select:"+service.qna_all_select("ABCDE"));
	}
	
	
	@Test
	public void testQna_update() { //update는 Qid(게시물번호)를 설정해주고 테스트를 진행해야 한다.
		QnaProductVO qnaproductVO = new QnaProductVO();
		qnaproductVO.setQid(46L); 
		qnaproductVO.setMid("rhehd002");
		qnaproductVO.setPid("ABCDE");

		Date date = new Date();
		qnaproductVO.setQdate(date);
		qnaproductVO.setQtitle("제목1수정입니다.");
		qnaproductVO.setQcontent("내용2수정입니다.");
		log.info("test_update : " + qnaproductVO);
		service.qna_update(qnaproductVO);
	}
	
	
	@Test
	public void testQna_read() {
		service.qna_read(46L);
		log.info("test_read:"+service.qna_read(46L));
	}

	

	@Test
	public void testQna_delete() {
		service.qna_delete(46L);
		log.info("test_delete:"+service.qna_delete(46L));
	}

}
