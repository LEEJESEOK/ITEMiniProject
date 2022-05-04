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

import com.thehandsome.domain.QnaProductVO;

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
public class QnaProductMapperTests {
	@Autowired
	QnaProductMapper mapper;

//	@Test
	public void test01_mapper() {
		log.info(mapper);
	}

	@Test
	public void test02_insert() {
		QnaProductVO vo = new QnaProductVO();
		vo.setQid(200L);
		vo.setMid("2");
		vo.setPid("1234_5678");
		vo.setQtitle("제목1입니다.");
		vo.setQcontent("내용1입니다.");
		vo.setQdate(new Date());
		log.info("test02 " + vo);
		mapper.insert(vo);

	}

	@Test
	public void test03_select() {
		List vo = (List) mapper.All_select("1234_5678"); // pid(String) 값 삽입
		log.info("test03" + vo);
	}

	@Test
	public void test04_read() {
		QnaProductVO vo = mapper.read(1L); //qid

	}

	@Test
	public void test05_update() {
		QnaProductVO vo = new QnaProductVO();
		vo.setQid(200L);
		vo.setMid("2");
		vo.setPid("1234_5678");

		Date date = new Date();
		vo.setQdate(date);
		vo.setQtitle("QnA제목수정입니다.");
		vo.setQcontent("QnA수정내용입니다.");
		int result = mapper.update(vo);
	}

	@Test
	public void test05_delete() {
		int result = mapper.delete(200);
		log.info("result : " + result);
	}

}
