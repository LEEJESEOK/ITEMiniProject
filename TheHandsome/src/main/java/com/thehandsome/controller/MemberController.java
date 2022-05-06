package com.thehandsome.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.thehandsome.domain.MemberVO;
import com.thehandsome.service.MemberService;

import lombok.extern.log4j.Log4j;

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
	public Map<String, Object> memberCheck(@RequestBody Map<String, Object> loginMap, HttpServletRequest request,
			HttpSession session) {

		log.info(session.getAttribute("prevPath"));

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
		}

		return map;
	}

	@RequestMapping(value = "/member/logout")
	public String logout(HttpSession session) {
		session.invalidate();

		return "redirect:/";
	}

	@RequestMapping(value = "/member/joinInfoForm")
	public String joinStart() {

		return "joinInfoForm";
	}

	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public String mypage(Model model, HttpSession session) {
		if (session.getAttribute("session_mid") != null)
			return "mypage";
		else
			return "login";
	}
}
