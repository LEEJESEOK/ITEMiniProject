package com.thehandsome.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/common")
public class CommonController {

	@RequestMapping("/passwordrecheck")
	public boolean passwordReCheck(HttpServletRequest request, HttpSession session,
			@RequestParam Map<String, Object> params) {

		session = request.getSession();

		String callPage = (String) params.get("callPage");

		String mid = (String) session.getAttribute("session_mid");
		String mpassword = (String) params.get("mpassword");
		String csrfToken = (String) params.get("CSRFToken");

		// TODO
		// Request check password
		
		boolean result = false;

		return result;
	}
}
