package com.thehandsome.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.thehandsome.domain.ProductVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MainController {

	private static final Logger logger = LoggerFactory.getLogger(MainController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = { "/" }, method = RequestMethod.GET)
	public String home(Locale locale, Model model) {

		// 신상품
		// 여성, 남성, ...?

		// 베스트
		// 여성, 남성

		// 매거진

		return "main";
	}

	@RequestMapping(value = { "/main" })
	public String main() {
		return "redirect:/";
	}

	@RequestMapping(value = "/intro/mainCategoryList")
	public ResponseEntity<HashMap<String, String>> mainCategoryList() {
		HashMap<String, String> map = new HashMap<String, String>();

		return new ResponseEntity<HashMap<String, String>>(map, HttpStatus.OK);
	}

	// 여성, 남성에 따른 최신 제품 리스트
	@RequestMapping(value = "/intro/mainNewProductList", method = RequestMethod.GET)
	public ResponseEntity<HashMap<String, List<ProductVO>>> mainNewProductList(
			@RequestParam("categoryCode") String categoryCode) {
		HashMap<String, List<ProductVO>> map = new HashMap<String, List<ProductVO>>();
		List<ProductVO> list = new ArrayList<>();

		// TODO

		return new ResponseEntity<HashMap<String, List<ProductVO>>>(map, HttpStatus.OK);
	}

	// 여성, 남성에 따른 베스트 제품 리스트
	@RequestMapping(value = "/intro/mainBestProductList", method = RequestMethod.GET)
	public ResponseEntity<HashMap<String, List<ProductVO>>> mainBetProductList(
			@RequestParam("categoryCode") String categoryCode) {
		HashMap<String, List<ProductVO>> map = new HashMap<String, List<ProductVO>>();
		List<ProductVO> list = new ArrayList<>();

		// TODO

		return new ResponseEntity<HashMap<String, List<ProductVO>>>(map, HttpStatus.OK);
	}

	// 최신 기사
	@RequestMapping(value = "/intro/mainMagazine", method = RequestMethod.GET)
	public ResponseEntity<HashMap<String, Object>> mainMagazine() {
		HashMap<String, Object> map = new HashMap<String, Object>();

		return new ResponseEntity<HashMap<String, Object>>(map, HttpStatus.OK);
	}
}
