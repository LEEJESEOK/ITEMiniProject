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
//QnaProductMapper 테스트
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
		
		vo.setMid("rhehd002");
		vo.setPid("ABCDE");
		vo.setQtitle("제목3입니다.");
		vo.setQcontent("내용1입니다.");
		vo.setQdate(new Date());
		log.info("test02 " + vo);
		mapper.insert(vo);

	}

	@Test
	public void test03_select() {
		List vo = (List) mapper.All_select("ABCDE"); // pid(String) 값 삽입
		log.info("test03" + vo);
	}

	@Test
	public void test04_read() {
		QnaProductVO vo = mapper.read(4L); // qid
		log.info("test04 : " + vo);
	}

	@Test
	public void test05_update() {
		QnaProductVO vo = new QnaProductVO();
		vo.setQid(4L);
		vo.setMid("rhehd002");
		vo.setPid("ABCDE");

		Date date = new Date();
		vo.setQdate(date);
		vo.setQtitle("QnA수정입니다.");
		vo.setQcontent("QnA수정입니다.");
		log.info("test05 : " + mapper.update(vo));
	}

	@Test
	public void test05_delete() {
		int result = mapper.delete(4L);
		log.info("result : " + result);
	}

}
