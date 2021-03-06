package com.thehandsome.controller;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

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
import com.thehandsome.service.QnaProductService;

import lombok.extern.log4j.Log4j;
@Controller
@RequestMapping("/qnaproduct/*")
@Log4j
/**
	 * 
	 * @author "Seungyeon"
	 *
	 */
public class QnaProductController {
	@Autowired
	private QnaProductService service;
	
	@GetMapping(value = "/list")
	
	public void list( Model model,@RequestParam("pageNum")  //페이징 리스트 반환
	int pageNum,@RequestParam("amount") int amount, @RequestParam("pid") String pid) {
		  int total = service.qna_total(pid);
		  model.addAttribute("list", service.getList(pageNum,amount,pid));
		  model.addAttribute("pageMaker", new PageDTD(pageNum,amount,total));
		  model.addAttribute("pid",pid);
		  
	  }
	@GetMapping(value = "/qna") // pid값을 qna.jsp로 넘겨주는 역할
	  public String qna(@RequestParam("pid") String pid) {
		  log.info(pid);
		  return "/qna";
	  }
	@GetMapping(value = "/one_qna") //qid에 해당하는 QnA 리뷰 한 행 반환
	  public ResponseEntity<QnaProductVO> one_qna(@RequestParam("qid") Long qid){
		QnaProductVO val=service.qna_read(qid);
		log.info("one_qna");
		  return new ResponseEntity<>(val, HttpStatus.OK);
	  }
	@PostMapping(value = "/insert_qna") //QnA게시판 글 등록
	  public String insert_qna(@RequestParam Map<String, Object> map){
		  QnaProductVO vo = new QnaProductVO();
		  vo.setMid(String.valueOf( map.get("mid")));
		  vo.setPid(String.valueOf(map.get("pid")));
		  vo.setQcontent(String.valueOf(map.get("qcontent")));
		  vo.setQtitle(String.valueOf(map.get("qtitle")));
		  Date date= new Date();
		  vo.setQdate(date);		  		  		  
		  service.qna_insert(vo);
		  log.info("insert_qna");
		  return "redirect:/p/detail?product_id="+(String)map.get("pid");
	  }
	  
	  @DeleteMapping(value = "delete_qna") //QnA 게시판 글 삭제
	  public ResponseEntity<String> delete_qna(@RequestParam("qid") Long qid){
		  service.qna_delete(qid);
		  log.info("delete_review");
		  return new ResponseEntity<>("Delete Success",HttpStatus.OK);
	  }
	  
	  @PutMapping(value = "update_qna") //QnA게시판 글 수정
	  public ResponseEntity<String> update_review(QnaProductVO vo){
		  service.qna_update(vo);
		  log.info("update_qna");
		  return new ResponseEntity<>("Update Success", HttpStatus.OK);
	  }

}
