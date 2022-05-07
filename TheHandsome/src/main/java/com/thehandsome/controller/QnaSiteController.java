package com.thehandsome.controller;

import java.util.List;

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
	
	@GetMapping(value = "/list")	
	public void list( Model model,@RequestParam("pageNum") int pageNum,@RequestParam("amount") int amount, @RequestParam("mid") String mid) {
		  int total = service.qna_site_total(mid);
		  model.addAttribute("list", service.getList(pageNum,amount,mid));
		  model.addAttribute("pageMaker", new PageDTD(pageNum,amount,total));
		  
	  }
	
	@GetMapping(value = "/one_qna_site")
	  public ResponseEntity<QnaSiteVO> one_qna_site(@RequestParam("qid") Long qid){
		QnaSiteVO val=service.site_read(qid);
		log.info("one_qna_site");
		  return new ResponseEntity<>(val, HttpStatus.OK);
	  }
	@PostMapping(value = "/insert_qna_site")
	  public ResponseEntity<String> insert_qna(QnaSiteVO vo){
		  service.site_insert(vo);
		  log.info("insert_qna_site");
		  return new ResponseEntity<>("Insert Success",HttpStatus.OK);
	  }
	  
	  @DeleteMapping(value = "delete_qna_site")
	  public ResponseEntity<String> delete_qna_site(@RequestParam("qid") Long qid){
		  service.site_delete(qid);
		  log.info("delete_qna_site");
		  return new ResponseEntity<>("Delete Success",HttpStatus.OK);
	  }
	  
	  @PutMapping(value = "update_qna_site")
	  public ResponseEntity<String> update_qna_site(QnaSiteVO vo){
		  service.site_update(vo);
		  log.info("update_qna_site");
		  return new ResponseEntity<>("Update Success", HttpStatus.OK);
	  }

}
