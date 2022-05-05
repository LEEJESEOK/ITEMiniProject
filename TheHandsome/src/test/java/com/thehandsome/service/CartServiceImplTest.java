package com.thehandsome.service;

import static org.junit.Assert.*;

import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.MethodSorters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.thehandsome.domain.MyCartVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@FixMethodOrder(MethodSorters.NAME_ASCENDING)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class CartServiceImplTest {

	@Autowired
	private CartService service;

	@Test
	public void test01_mapper() {
		log.info(service);
	}

	@Test
	public void test02_service_insert() {
		MyCartVO cart = new MyCartVO();
		cart.setMid("rhehd002");
		cart.setPid("ABCDE");
		cart.setPsize("XL");
		cart.setPcolor("red");
		cart.setPamount(1);
		log.info("cart : " + cart);

		service.insert_cart(cart);
	}

	@Test
	public void test03_service_list() {
		service.list("rhehd002").forEach(cart -> log.info(cart));
	}

	@Test
	public void test04_service_update() {
		service.update_cart("ABCDE", 10);
	}

	@Test
	public void test05_service_delete() {
		service.delete_cart("ABCDE");
	}

}
