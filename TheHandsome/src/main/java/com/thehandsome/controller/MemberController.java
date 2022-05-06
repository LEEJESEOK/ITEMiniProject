package com.thehandsome.controller;

import java.util.HashMap;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.thehandsome.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	MemberService memberService;

	// 로그인 페이지
	@RequestMapping("/member/login")
	public String login() {

		return "login";
	}

	// 로그인 처리
	@RequestMapping(value = "/member/isValidMember", method = RequestMethod.POST)
	public HashMap<String, String> isValidMember(@Param("mid") String mid, @Param("mpassword") String mpassword) {
		boolean result = memberService.isValidMember(mid, mpassword);

		HashMap<String, String> map = new HashMap<>();
		map.put("result", result ? "exist" : "not exist");

		return map;
	}

	@RequestMapping("/mypage")
	public void mypage() {

	}
}
