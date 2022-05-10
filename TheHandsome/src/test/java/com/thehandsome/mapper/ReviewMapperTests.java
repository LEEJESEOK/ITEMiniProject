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

import com.thehandsome.domain.Criteria;
import com.thehandsome.domain.ReviewVO;

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

//ReviewMapper 테스트
public class ReviewMapperTests {
	@Autowired
	ReviewMapper mapper;

	@Test
	public void test01_mapper() {
		log.info(mapper);
	}
	
	@Test
	public void test02_insert() {
		ReviewVO vo=new ReviewVO();
		vo.setRno(1L);
		vo.setMid("rhehd002");
		vo.setPid("ABCDE");
		vo.setPcolor("gray");
		vo.setPsize("Large");
		Date date= new Date();
		vo.setRdate(date);
		vo.setRrate(5);
		vo.setRcontent("리뷰내용입니다.");
		vo.setRimage("이미지파일.jpg");
		log.info("test02 " + vo);
		mapper.insert(vo);
		
	}
	
	@Test
	public void test03_select() {
		List vo=(List) mapper.All_select("1234_5678"); //pid(String) 값 삽입
		log.info("test03"+vo);
	}
	
	@Test
	public void test04_read() {
		ReviewVO vo=mapper.read(1L);
		
	}
	@Test
	public void test05_update() {
		ReviewVO vo=new ReviewVO();
		vo.setRno(84L);
		vo.setMid("2");
		vo.setPid("ABCDE");
		
		
		Date date= new Date();
		vo.setRdate(date);
		vo.setRrate(4);
		vo.setRcontent("리뷰수정내용입니다.");
		int result = mapper.update(vo);
	}
	
	 @Test 
	 public void test05_delete() { 
		 int result=mapper.delete(22L);
		 log.info("result : " + result); 
	}
	 
	@Test
	public void testPaing() {
		List<ReviewVO> list = mapper.getListReviewPaging(1,10,"ABCDE");
		list.forEach(review ->log.info(review));
		
		
	}
}
