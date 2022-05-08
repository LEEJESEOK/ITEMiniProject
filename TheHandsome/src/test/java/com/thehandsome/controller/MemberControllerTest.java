package com.thehandsome.controller;

import static org.junit.Assert.assertNotNull;

import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.MethodSorters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;

import com.thehandsome.service.MemberService;

import lombok.extern.log4j.Log4j;

/**
 * 
 * @author JUNELLE
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@FixMethodOrder(MethodSorters.NAME_ASCENDING)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@WebAppConfiguration
@Log4j
public class MemberControllerTest {

	@Autowired
	MemberService memberService;

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
