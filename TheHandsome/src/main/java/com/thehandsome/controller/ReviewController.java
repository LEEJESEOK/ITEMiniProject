package com.thehandsome.controller;

import java.util.Date;
import java.util.HashMap;
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
import org.springframework.web.bind.annotation.ResponseBody;
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
		  public void list( Model model,@RequestParam("pageNum") 
		  int pageNum,@RequestParam("amount") int amount, @RequestParam("pid") String pid) {
			  int total = service.review_total(pid);
			  model.addAttribute("list", service.getList(pageNum,amount,pid));
			  model.addAttribute("pageMaker", new PageDTD(pageNum,amount,total));
			  model.addAttribute("pid",pid);
			  
		  }
		  

		  @GetMapping(value = "/one_review")
		  public ResponseEntity<ReviewVO> one_review(@RequestParam("rno") Long rno){
			  ReviewVO val=service.review_read(rno);
			  log.info("one_review");
			  return new ResponseEntity<>(val, HttpStatus.OK);
		  }
		  
		  @GetMapping(value = "/create") 
		  public String Create(@RequestParam("pid") String pid) {
			  log.info(pid);
			  return "/create";
		  }
		  
		  
		  
		  @PostMapping(value = "/insert_review")
		  public String insert_review(@RequestParam Map<String, Object> map ){
			  ReviewVO vo=new ReviewVO();
			  vo.setMid(String.valueOf( map.get("mid")));
			  vo.setPid(String.valueOf(map.get("pid")));
			  vo.setPcolor(String.valueOf(map.get("pcolor")));
			  vo.setPsize(String.valueOf(map.get("psize")));
			  Date date= new Date();
			  vo.setRdate(date);
			  String rate=String.valueOf(map.get("rrate"));
			  vo.setRrate(Integer.parseInt(rate));
			  vo.setRcontent((String)map.get("rcontent"));
			  vo.setRimage((String)map.get("rimage"));
			  service.review_insert(vo); 
			  log.info("insert_review");
			  
			  return "redirect:/p/detail?product_id="+(String)map.get("pid");
		  }
		  
		  @DeleteMapping(value = "delete_review")
		  public String delete_review(@RequestParam("rno")Long rno){
			  service.review_delete(rno);
			  log.info("delete_review");
			 
			  return "redirect:review/list";
		  }
		  
		  @PutMapping(value = "update_review")
		  public String update_review(ReviewVO vo){
			  service.review_update(vo);
			  log.info("update_review");
			  
			  return "redirect:review/list";
		  }
		  
		  
}
		 
