package com.thehandsome.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.thehandsome.domain.MemberVO;
import com.thehandsome.service.MemberService;

import lombok.extern.log4j.Log4j;

/**
 * MemberController  
 * 
 * @author JUNELLE
 *
 */
@Controller
@Log4j
public class MemberController {

	@Autowired
	MemberService memberService;

	// 로그인 페이지
	@RequestMapping("/member/login")
	public ModelAndView login(@CookieValue(value = "REMEMBER", required = false) Cookie rememberCookie, Model model,
			HttpServletRequest request, HttpSession session) {

		String referer = request.getHeader("Referer");
		request.getSession().setAttribute("redirectURI", referer);

		if (rememberCookie != null) {
			model.addAttribute("mid", rememberCookie.getValue());
			model.addAttribute("id_save", true);
		}

		return new ModelAndView("login");
	}

	// 로그인 처리
	@RequestMapping(value = "/member/auth")
	@ResponseBody
	public Map<String, Object> memberAuth(@RequestBody Map<String, Object> loginMap, HttpServletRequest request,
			HttpSession session) {

		log.info("prevPath : " + session.getAttribute("prevPath"));

		String mid = (String) loginMap.get("mid");
		String mpassword = (String) loginMap.get("mpassword");
		log.info("(mid, mpassword) : " + mid + ", " + mpassword + ")");

		MemberVO loginMember = memberService.getMemberAccountByLogin(mid, mpassword);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("result", loginMember != null ? "exist" : "not exsit");
		log.info("login : " + map.get("result"));

		if (loginMember != null) {
			map.put("mid", loginMember.getMid());
			map.put("mpassword", loginMember.getMpassword());

			session = request.getSession();
			session.setAttribute("session_mid", loginMember.getMid());
			session.setAttribute("session_mname", loginMember.getMname());
			session.setAttribute("session_mmileage", loginMember.getMmileage());

			log.info("set session data");
		} else {
			map.put("message", "아이디 또는 비밀번호가 올바르지 않습니다.");
		}

		return map;
	}

	@RequestMapping(value = "/member/logout")
	public String logout(HttpSession session) {
		session.invalidate();

		return "redirect:/";
	}

	@RequestMapping(value = "/member/joininfoform")
	public String joinStart() {

		return "member/joininfoform";
	}

	@RequestMapping(value = "/member/isduplid")
	@ResponseBody
	public Map<String, Object> isDuplId(@RequestParam Map<String, Object> params) {

		String id = (String) params.get("id");
		log.info(id);
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("result", memberService.isDuplMemberByMid(id));
		log.info(result.get("result"));

		return result;
	}

	@RequestMapping(value = "/member/joincomplete")
	public void joinMemberComplete(@RequestParam Map<String, Object> params) {

		for (String key : params.keySet()) {
			log.info(key + " : " + params.get(key));
			log.info(key + " : " + params.get(key).getClass());
		}

		MemberVO member = new MemberVO();
		member.setMid((String) params.get("id"));
		member.setMpassword((String) params.get("passwd"));
		member.setMname((String) params.get("name"));
		member.setMemail((String) params.get("emailAddress"));
		member.setMtel((String) params.get("mobilePhoneNumber"));
		member.setMzipcode((String) params.get("zipcode"));
		member.setMaddress1((String) params.get("address1"));
		member.setMaddress2((String) params.get("address2"));

		memberService.joinMember(member);
	}

}
