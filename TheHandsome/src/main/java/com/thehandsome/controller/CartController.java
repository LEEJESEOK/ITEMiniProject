package com.thehandsome.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.thehandsome.domain.MyCartVO;
import com.thehandsome.service.CartService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/cart/*")
/**
 * @author 고동현
 * 장바구니 관련 Controller 구현
 *
 */
public class CartController {
	
	private static final Logger logger = LoggerFactory.getLogger(CartController.class);

	@Autowired
	private CartService service;
	
	@GetMapping("/list")
	public String display_cart(Model model, @RequestParam("mid") String mid) {
		log.info("display_cart");

		model.addAttribute("list_cart", service.list(mid)); //장바구니 리스트 출력
		log.info(model);
		
		return "Cart";
	}
	
	@GetMapping("/insert")
	public String cart_insert(MyCartVO mycartVO) {
		log.info("insert_cart");
 
		service.insert_cart(mycartVO); //장바구니 삽입
		
		return "Cart";
	}
	
	@GetMapping("/delete")
	public String cart_delete(@RequestParam("pid") String pid) {
		log.info("delete_cart");

		service.delete_cart(pid);//장바구니 항목 삭제
		
		return "Cart";
	}
	
	@GetMapping("/update")
	public String cart_update(@RequestParam("pid") String pid,@RequestParam("pamount") int pamount) {
		log.info("update_cart");

		service.update_cart(pid, pamount); //장바구니 항목 업데이트
		
		return "Cart";
	}
	
}
