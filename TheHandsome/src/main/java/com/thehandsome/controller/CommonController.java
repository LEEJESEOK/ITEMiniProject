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

	@RequestMapping("/passwordrecheck")
	@ResponseBody
	public Map<String, Object> passwordReCheck(HttpServletRequest request, HttpSession session,
			@RequestBody Map<String, Object> params) {
		
		for(String key : params.keySet())
			log.info(key + ":"+ params.get(key));

		session = request.getSession();

		String mid = (String) session.getAttribute("session_mid");
		String mpassword = (String) params.get("pw");
		log.info(mid);
		log.info(mpassword);

		MemberVO member = memberService.getMemberAccountByLogin(mid, mpassword);
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
