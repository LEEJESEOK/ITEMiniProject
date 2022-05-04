package com.thehandsome.mapper;

import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.MethodSorters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.thehandsome.domain.MyCartVO;

import lombok.extern.log4j.Log4j;

/**
 * MyCart CRUD test
 * 
 * @author 고동현
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@FixMethodOrder(MethodSorters.NAME_ASCENDING)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class CartMapperTests {
	@Autowired
	CartMapper mapper;

	@Test
	public void test01_mapper() {
		log.info(mapper);
	}

	@Test
	public void test02_insert() {
		MyCartVO cart = new MyCartVO();
		cart.setMid("rhehd002");
		cart.setPid("ABCDE");
		cart.setPsize("XL");
		cart.setPcolor("red");
		cart.setPamount(1);
		log.info("cart : " + cart);

		mapper.insert_cart(cart);
	}

	@Test
	public void test03_list() {
		mapper.list("rhehd002").forEach(cart -> log.info(cart));
	}

	@Test
	public void test04_update() {
		mapper.update_cart("ABCDE", 20);
	}

	@Test
	public void test05_delete() {
		mapper.delete_cart("ABCDE");
	}
}
