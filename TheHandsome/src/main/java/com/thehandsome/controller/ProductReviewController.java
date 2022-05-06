package com.thehandsome.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.thehandsome.domain.ReviewVO;
import com.thehandsome.service.ReviewService;

import lombok.extern.log4j.Log4j;


  @RestController
  
  @RequestMapping("/productreview")
  
  @Log4j
 /**
	 * 
	 * @author "Seungyeon"
	 *
	 */
public class ProductReviewController {
		  @Autowired
		  private ReviewService service;
		  @RequestMapping(value = "/one_product_review") 
		  public ResponseEntity<List<ReviewVO>>one_product_review(@RequestParam("pid") String pid) { 
			  List<ReviewVO> list = service.review_All_select(pid);
			  log.info("한 개의 상품에 대한 리뷰 "); 
			  return new ResponseEntity<>(list,HttpStatus.OK); //미작업
		  
		  }
		  
		  }
		 
