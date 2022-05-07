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
public class BrandController {

	private static final Logger logger = LoggerFactory.getLogger(BrandController.class);

	@Autowired
	private ProductService service;

	@GetMapping("/b")
	public String display_detail(Model model, @RequestParam("bno") int bno) {
		log.info("display_product_by_brand");

		model.addAttribute("list_by_brand", service.display_by_brand(bno)); //선택한 브랜드 상품 나열
		log.info(model);
		
		return "productlist";
	}

}
