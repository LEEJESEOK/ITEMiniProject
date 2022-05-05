package com.thehandsome.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.thehandsome.service.ProductService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/p/*")
public class ProductController {
	
	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);
	
	@Autowired
	private ProductService service;
	
	@GetMapping("/list")
	public void list_new(Model model) {
		log.info("list_new");
		model.addAttribute("list_new", service.display(1)); //신상품
	}
	
	@GetMapping("/list")
	public void list_best(Model model) {
		log.info("list_best");
		model.addAttribute("list_best", service.display(2)); //베스트
	}
	
	//@getMapping("/")
	
	

}
