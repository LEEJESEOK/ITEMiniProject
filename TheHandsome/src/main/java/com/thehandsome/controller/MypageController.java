package com.thehandsome.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.thehandsome.domain.MemberVO;
import com.thehandsome.service.MemberService;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class MypageController {

	@Autowired
	MemberService memberService;

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

		String mid = (String) session.getAttribute("session_mid");

		MemberVO member = memberService.getMemberInformation(mid);
		model.addAttribute("mid", member.getMid());
		model.addAttribute("mname", member.getMname());
		model.addAttribute("memail", member.getMemail());
		model.addAttribute("mtel", member.getMtel());
		model.addAttribute("mzipcode", member.getMzipcode());
		model.addAttribute("maddress1", member.getMaddress1());
		model.addAttribute("maddress2", member.getMaddress2());

		log.info(model);

		return "mypage/infoChange";
	}

	@RequestMapping("/mypage/infoChangePWCheck")
	public String infoChangePWCheck(HttpSession session, Model model) {
		if (session.getAttribute("session_mid") != null)
			return "mypage/infoChangePWCheck";
		else
			return "login";
	}
	
	@RequestMapping("/mypae/changePassword")
	public boolean changePassword(@RequestBody Map<String, Object> params) {
//		MemberVO 
		
//		memberService.changeMemberInformation(member)
		
		return false;
	}

	@RequestMapping("/mypage/updatecomplete")

	public String updateComplete(@RequestBody Map<String, Object> params) {

		for (String key : params.keySet())
			log.info(key + " : " + params.get(key));

		MemberVO member = new MemberVO();
		member.setMpassword((String) params.get(""));
		member.setMpassword((String) params.get(""));

//		memberService.changeMemberInformation(member);

		return "mypage";
	}

	@RequestMapping("/mypage/memberSecesseion")
	public String setSecession(HttpServletRequest request, HttpSession session) {
		session = request.getSession();
		String mid = (String) session.getAttribute("session_mid");

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("data", memberService.memberSecession(mid));

		session.invalidate();

		return "main";
	}
}
