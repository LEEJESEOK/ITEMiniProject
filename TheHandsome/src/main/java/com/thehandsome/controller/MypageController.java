package com.thehandsome.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.thehandsome.mapper.MemberMapper;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class MypageController {
	
	@Autowired
	MemberMapper memberMapper;

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

		log.info("infoChange");
		
		return "mypage/infoChange";
	}

	@RequestMapping("/mypage/infoChangePWCheck")
	public void infoChangePWCheck(HttpSession session, Model model) {

	}
}
