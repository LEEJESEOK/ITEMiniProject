package com.thehandsome.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.thehandsome.service.ProductService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
/**
 * @author 고동현
 * brand관련 Controller 구현
 *
 */
public class BrandController {

	private static final Logger logger = LoggerFactory.getLogger(BrandController.class);

	@Autowired
	private ProductService service;

	@GetMapping("/b")
	public String display_detail(Model model, @RequestParam("bno") int bno) {
		log.info("display_product_by_brand");
		
		int level = 4; 
		model.addAttribute("list", service.display_by_brand(bno)); //선택한 브랜드 상품 나열
		log.info(model);
		model.addAttribute("level", level);
		log.info(model);
		
		return "productlist";
	}
	
	@GetMapping("/b/co")
	public String display_by_color(Model model, @RequestParam("bno") int bno, @RequestParam("color")String color) {
		log.info("display_product_by_brand_color");
		
		int level = 4; 
		model.addAttribute("list", service.display_by_brand_color(bno, color)); //선택한 브랜드별 색상 기준 상품 나열
		log.info(model);
		model.addAttribute("level", level);
		log.info(model);
		
		return "productlist";
	}
	
	@GetMapping("/b/size")
	public String display_by_size(Model model, @RequestParam("bno") int bno, @RequestParam("size")String size) {
		log.info("display_product_by_brand_size");
		
		int level = 4; 
		model.addAttribute("list", service.display_by_brand_size(bno, size)); //선택한 브랜드별 사이즈 기준 상품 나열
		log.info(model);
		model.addAttribute("level", level);
		log.info(model);
		
		return "productlist";
	}
	
	@GetMapping("/b/sort")
	public String display_by_sort(Model model, @RequestParam("bno") int bno, @RequestParam("mode")int mode) {
		log.info("display_product_by_brand_sort");
		
		int level = 4; 
		if (mode == 3) {
			model.addAttribute("list", service.display_by_brand_price(mode, bno)); // 브랜드별 높은 가격순
			log.info(model);
		}
		else if (mode == 4) {
			model.addAttribute("list", service.display_by_brand_price_low(mode, bno)); // 브랜드별 낮은 가격순
			log.info(model);
		}
		else {
			model.addAttribute("list", service.display_by_brand_sort(mode, bno)); // 브랜드별 평점, 발매순
		}
		
		model.addAttribute("level", level);
		
		
		return "productlist";
	}
	

}
