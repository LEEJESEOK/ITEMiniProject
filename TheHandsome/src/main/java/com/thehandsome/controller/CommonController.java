package com.thehandsome.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.thehandsome.domain.MemberVO;
import com.thehandsome.service.MemberService;

import lombok.extern.log4j.Log4j;

/**
 * 공통 컨트롤러<br>
 * 
 * @author "LEE JESEOK"
 *
 */
@Log4j
@Controller
@RequestMapping("/common")
public class CommonController {

	@Autowired
	MemberService memberService;

	/** 
	 * 로그인한 계정(세션)의 비밀번호 재확인<br>
	 * 
	 * @param request
	 * @param session
	 * @param params
	 * @return
	 */
	@RequestMapping("/passwordrecheck")
	@ResponseBody
	public Map<String, Object> passwordReCheck(HttpServletRequest request, HttpSession session,
			@RequestBody Map<String, Object> params) {

		for (String key : params.keySet())
			log.info(key + ":" + params.get(key));

		session = request.getSession();

		String session_mid = (String) session.getAttribute("session_mid");
		String pw = (String) params.get("pw");
		log.info("session id : " + session_mid);
		log.info("pw : " + pw);

		MemberVO member = memberService.getMemberAccountByLogin(session_mid, pw);
		log.info(member);

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("result", (member != null) ? true : false);

		if ((boolean) map.get("result")) {

		} else {
			map.put("message", "입력하신 비밀번호가 일치하지 않습니다.");
		}

		return map;
	}
}
