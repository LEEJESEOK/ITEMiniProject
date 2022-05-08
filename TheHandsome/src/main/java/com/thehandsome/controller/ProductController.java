package com.thehandsome.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.thehandsome.service.ProductService;
import com.thehandsome.service.ReviewService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/p/*")
/**
 * @author 고동현
 * 상품 관련 controller 구현
 *
 */
public class ProductController {

	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);

	@Autowired
	private ProductService service;
	
	@Autowired
	private ReviewService review;
	
	@GetMapping("/detail")
	public String display_detail(Model model, @RequestParam("product_id") String pid ) {
		log.info("display_detail");

		model.addAttribute("product_detail", service.display_product_detail(pid)); // 상품상세
		log.info(model);
		
		model.addAttribute("product_color", service.display_product_color(pid)); // 상품 상세 페이지에 들어가는 색상 표시
		log.info(model);
		
		model.addAttribute("product_size", service.display_product_size(pid)); // 상품 상세 페이지에 들어가는 사이즈 표시
		log.info(model);
		
		model.addAttribute("review_total", review.review_total(pid));
		
		model.addAttribute("qna_total", service.qna_total(pid));
		return "productdetail";
	}
	
	@GetMapping("/c/large") // 상품 카테고리 대분류
	public String display_product_category_large(Model model,@RequestParam("clarge")String category_large) {
		log.info("대분류");
		
		int level = 1; // 뷰에 표시하기 위한 변수 선언

		model.addAttribute("list", service.display_product_large(1, category_large)); // 상품 대분류에 따른 상품 표시
		log.info(model);
		model.addAttribute("level", level);
		log.info(model);
		return "productlist";
	}
	
	@GetMapping("/c/medium")
	public String display_product_category_medium(Model model,
			@RequestParam("clarge")String category_large, @RequestParam("cmedium")String category_medium) {
		log.info("중분류");
		
		int level = 2;
		model.addAttribute("list", service.display_product_medium(1, category_large, category_medium)); // 상품 대분류-중분류 고려한 상품 표시
		log.info(model);
		model.addAttribute("level", level);
		log.info(model);
		
		return "productlist";
	}
	
	@GetMapping("/c/small")
	public String display_product_category_small(Model model,
			@RequestParam("clarge")String category_large, @RequestParam("cmedium")String category_medium,
			@RequestParam("csmall")String category_small) {
		
		int level = 3;
		model.addAttribute("list", service.display_product_small(1, category_large, category_medium, category_small)); // 상품 대분류-중분류-소분류 고려한 상품 표시
		log.info(model);
		model.addAttribute("level", level);
		log.info(model);
		
		return "productlist";
	}
	
	@GetMapping("/ordercomplete") // 주문완료 페이지 이동
	public String orderComplete(){
		
		return "ordercomplete";
	}
}
