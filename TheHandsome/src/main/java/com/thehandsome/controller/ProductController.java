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
@RequestMapping("/p/*")
public class ProductController {

	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);

	@Autowired
	private ProductService service;

	@GetMapping("/detail")
	public String display_detail(Model model, @RequestParam("product_id") String pid) {
		log.info("display_detail");

		model.addAttribute("product_detail", service.display_product_detail(pid)); // 상품상세
		log.info(model);
		
		model.addAttribute("product_color", service.display_product_color(pid)); // 상품컬러
		log.info(model);
		
		model.addAttribute("product_size", service.display_product_size(pid)); // 상품사이즈
		log.info(model);
		
		return "productdetail";
	}

}
