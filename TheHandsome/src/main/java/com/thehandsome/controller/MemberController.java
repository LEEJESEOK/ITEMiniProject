package com.thehandsome.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {

	@RequestMapping("/member/login")
	public String login() {

		return "login";
//		if (isLogin == true)
//			return new ResponseEntity<String>("redirect:/", HttpStatus.OK);
//		else
//			return new ResponseEntity<String>("", HttpStatus.OK);
	}

	@RequestMapping("/mypage")
	public void mypage() {

	}
}
