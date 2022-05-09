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
import org.springframework.web.bind.annotation.ResponseBody;

import com.thehandsome.domain.MemberVO;
import com.thehandsome.service.MemberService;

import lombok.extern.log4j.Log4j;

/**
 * MyPage 컨트롤러<br>
 * 개인정보 수정, 비밀번호 변경, 회원 상태 변경<br>
 * 
 * @author JUNELLE
 *
 */
@Controller
@Log4j
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
		if (session.getAttribute("session_mid") == null)
			return "login";

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

	@RequestMapping("/mypage/changePassword")
	@ResponseBody
	public Map<String, Object> changePassword(@RequestBody Map<String, Object> params, HttpServletRequest request) {
		log.info("changePassword");

		String mid = (String) request.getSession().getAttribute("session_mid");
		String mpassword = (String) params.get("password");
		log.info("mid : " + mid + " mpassword : " + mpassword);

		Map<String, Object> response = new HashMap<String, Object>();

		response.put("result", memberService.changeMemberPassword(mid, mpassword));
		log.info(response.get("result"));

		return response;
	}

	@RequestMapping("/mypage/updateComplete")
	@ResponseBody
	public Map<String, Object> updateComplete(@RequestBody Map<String, Object> params, HttpSession session) {

		for (String key : params.keySet())
			log.info(key + " : " + params.get(key));

		String mid = (String) session.getAttribute("session_mid");

		MemberVO member = new MemberVO();
		member.setMid(mid);
		member.setMemail((String) params.get("memailAddress"));
		member.setMzipcode((String) params.get("zipCode"));
		member.setMaddress1((String) params.get("address1"));
		member.setMaddress2((String) params.get("address2"));
		member.setMtel((String) params.get("mobilePhoneNumber"));
		log.info(member);

		Map<String, Object> response = new HashMap<String, Object>();
		response.put("result", memberService.changeMemberInformation(member));
		log.info(response.get("result"));

		return response;
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
