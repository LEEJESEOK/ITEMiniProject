package com.thehandsome.controller;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.fail;

import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runners.MethodSorters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.web.servlet.MockMvc;

import com.thehandsome.service.MemberService;

@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class MemberControllerTest {

	@Autowired
	MemberService memberService;
	
	@Autowired
	MockMvc mock;

	@Test
	public void test00_service() {
		assertNotNull(memberService);
	}

	@Test
	public void test10_join() {
		
	}

	@Test
	public void test11_isExistMember() {

	}

}
