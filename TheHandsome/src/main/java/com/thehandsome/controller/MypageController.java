package com.thehandsome.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MypageController {

	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public String mypage(HttpSession session, Model model) {
		if (session.getAttribute("session_mid") != null)
			return "mypage";
		else
			return "login";
	}

	@RequestMapping("/mypage/infoChange")
	public String infoChange(HttpSession session, Model model) {
//		if (session.getAttribute("session_mid") == null)
//			return "login";

		return "/mypage/infoChange";

	}

	@RequestMapping("/mypage/infoChangePWCheck")
	public void infoChangePWCheck(HttpSession session, Model model) {

	}
}
