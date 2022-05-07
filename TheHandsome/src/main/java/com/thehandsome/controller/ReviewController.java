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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.thehandsome.domain.PageDTD;
import com.thehandsome.domain.ReviewVO;
import com.thehandsome.service.ReviewService;

import lombok.extern.log4j.Log4j;


  @Controller
  
  @RequestMapping("/review/*")
  
  @Log4j
 /**
	 * 
	 * @author "Seungyeon"
	 *
	 */
public class ReviewController {
		  @Autowired
		  private ReviewService service;
		  
		  @GetMapping(value ="/list")
		  public void list( Model model,@RequestParam("pageNum") int pageNum,@RequestParam("amount") int amount, @RequestParam("pid") String pid) {
			  int total = service.review_total(pid);
			  model.addAttribute("list", service.getList(pageNum,amount,pid));
			  model.addAttribute("pageMaker", new PageDTD(pageNum,amount,total));
			  
		  }
		  
	/*
	 * @GetMapping(value = "/review_list") public
	 * ResponseEntity<List<ReviewVO>>review_list(@RequestParam("pid") String pid) {
	 * List<ReviewVO> list = service.review_All_select(pid);
	 * log.info("review_list"); return new ResponseEntity<>(list,HttpStatus.OK);
	 * 
	 * }
	 */
		  
		  @GetMapping(value = "/one_review")
		  public ResponseEntity<ReviewVO> one_review(@RequestParam("rno") Long rno){
			  ReviewVO val=service.review_read(rno);
			  log.info("one_review");
			  return new ResponseEntity<>(val, HttpStatus.OK);
		  }
		  
		  @PostMapping(value = "/insert_review")
		  public String insert_review(ReviewVO vo, RedirectAttributes rttr){
			  service.review_insert(vo);
			  log.info("insert_review");
			  rttr.addFlashAttribute("result", vo.getRno());
			  return "redirect:review/list";
		  }
		  
		  @DeleteMapping(value = "delete_review")
		  public String delete_review(@RequestParam("rno")Long rno, RedirectAttributes rttr){
			  service.review_delete(rno);
			  log.info("delete_review");
			  rttr.addFlashAttribute("result", "Success");
			  return "redirect:review/list";
		  }
		  
		  @PutMapping(value = "update_review")
		  public String update_review(ReviewVO vo, RedirectAttributes rttr){
			  service.review_update(vo);
			  log.info("update_review");
			  rttr.addFlashAttribute("result", "Success");
			  return "redirect:review/list";
		  }
		  
		  
}
		 
