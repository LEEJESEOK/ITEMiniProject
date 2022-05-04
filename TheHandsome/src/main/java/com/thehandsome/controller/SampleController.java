package com.thehandsome.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 참고용 샘플 페이지 컨트롤러
 * 
 * @author "LEE JESEOK"
 *
 */
@Controller
public class SampleController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/sample", method = RequestMethod.GET)
	public String sample() {
		return "sample";
	}

}
