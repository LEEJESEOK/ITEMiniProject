package com.thehandsome.controller;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.thehandsome.domain.PageDTD;
import com.thehandsome.domain.QnaProductVO;
import com.thehandsome.domain.QnaSiteVO;
import com.thehandsome.service.QnaSiteService;

import lombok.extern.log4j.Log4j;
@Controller

@RequestMapping("/qnasite/*")

@Log4j
/**
	 * 
	 * @author "Seungyeon"
	 *
	 */
public class QnaSiteController {
	@Autowired
	private QnaSiteService service;
	
	@GetMapping(value = "/list")	//1:1 게시판 페이징 리스트 반환
	public void list( Model model,@RequestParam("pageNum") 
	int pageNum,@RequestParam("amount") int amount, @RequestParam("mid") String mid) {
		  int total = service.qna_site_total(mid);
		  model.addAttribute("list", service.getList(pageNum,amount,mid));
		  model.addAttribute("pageMaker", new PageDTD(pageNum,amount,total));
		  
	  }
	
	@GetMapping(value = "/qnasite")  //qnasite.jsp에 mid (아이디) 값 반환
	  public String qnasite(@RequestParam("mid") String mid) {
		  log.info(mid);
		  return "qnasite";
	}
	@PostMapping(value = "/insert_qna_site") //1:1 게시판 글 등록
	  public String insert_qna(@RequestParam Map<String, Object> map){
		  QnaSiteVO vo = new QnaSiteVO();
		  vo.setMid(String.valueOf( map.get("mid")));
		  
		  vo.setQcontent(String.valueOf(map.get("qcontent")));
		  vo.setQtitle(String.valueOf(map.get("qtitle")));
		  Date date= new Date();
		  vo.setQdate(date);		  		  		  
		  service.site_insert(vo);
		  log.info("insert_qna");
		  return "mypage";
	}
	@GetMapping(value = "/one_qna_site") //1:1 게시판 한 행 반환
	  public ResponseEntity<QnaSiteVO> one_qna_site(@RequestParam("qid") Long qid){
		QnaSiteVO val=service.site_read(qid);
		log.info("one_qna_site");
		  return new ResponseEntity<>(val, HttpStatus.OK);
	  }
	
	  
	  @DeleteMapping(value = "delete_qna_site") //1:1 게시판 글 삭제
	  public ResponseEntity<String> delete_qna_site(@RequestParam("qid") Long qid){
		  service.site_delete(qid);
		  log.info("delete_qna_site");
		  return new ResponseEntity<>("Delete Success",HttpStatus.OK);
	  }
	  
	  @PutMapping(value = "update_qna_site") //1:1 게시판 글 수정
	  public ResponseEntity<String> update_qna_site(QnaSiteVO vo){
		  service.site_update(vo);
		  log.info("update_qna_site");
		  return new ResponseEntity<>("Update Success", HttpStatus.OK);
	  }

}
