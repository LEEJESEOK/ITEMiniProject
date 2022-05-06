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
import com.thehandsome.domain.ReviewVO;

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
public class ReviewServiceImplTest {
	@Autowired
	ReviewService service;
	@Test
	public void testReview_All_select() {
		fail("Not yet implemented");
	}

	@Test
	public void testReview_read() {
		service.review_read(82L);
	}

	@Test
	public void testReview_insert() {
		ReviewVO vo=new ReviewVO();
		
		vo.setMid("rhehd002");
		vo.setPid("ABCDE");
		vo.setPcolor("Red");
		vo.setPsize("Large");
		Date date= new Date();
		vo.setRdate(date);
		vo.setRrate(3);
		vo.setRcontent("리뷰내용입니다.");
		vo.setRimage("이미지파일.jpg");
		log.info("test_review " + vo);
		service.review_insert(vo);
	}
	
	
	@Test
	public void testReview_update() {
		ReviewVO vo=new ReviewVO();
		vo.setRno(101L);
		vo.setMid("rhehd002");
		vo.setPid("ABCDE");
		vo.setRcontent("수정");
		vo.setRimage("이미지1");
		Date date=new Date();
		vo.setRdate(date);
		vo.setRrate(1);
		log.info("test_update:" + vo);
		service.review_update(vo);
	}
	
	
	@Test
	public void testReview_delete() {
		service.review_delete(102L);
		
	}

}
