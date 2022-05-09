package com.thehandsome.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.thehandsome.domain.ProductVO;
import com.thehandsome.service.ProductService;

import lombok.extern.log4j.Log4j;

/**
 * Main 페이지 컨트롤러
 * 
 * @author JUNELLE
 *
 */
@Log4j
@Controller
public class MainController {

	private static final Logger logger = LoggerFactory.getLogger(MainController.class);

	@Autowired
	private ProductService service;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	/**
	 * @author 고동현
	 * 메인페이지 신상품, 베스트상품 출력
	 */
	@RequestMapping(value = { "/" }, method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		ArrayList<ProductVO> productlist_new = new ArrayList<>();
		ArrayList<ProductVO> productlist_best = new ArrayList<>();
		// 신상품
		// 여성, 남성
		productlist_new = service.display(1);
		model.addAttribute("list_new", productlist_new); // 신상품
		log.info(productlist_new);
		// 베스트
		// 여성, 남성
		productlist_best = service.display(2);
		model.addAttribute("list_best", productlist_best); // best상품 
		log.info(productlist_best);

		return "main";
	}

	@RequestMapping(value = { "/main" })
	public String main() {
		return "redirect:/";
	}
}
