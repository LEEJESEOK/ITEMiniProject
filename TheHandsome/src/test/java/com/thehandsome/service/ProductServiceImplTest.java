package com.thehandsome.service;

import static org.junit.Assert.*;

import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.MethodSorters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.thehandsome.domain.ProductVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@FixMethodOrder(MethodSorters.NAME_ASCENDING)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ProductServiceImplTest {

	@Autowired
	private ProductService service;
	
	@Test
	public void test01_service() {
		log.info(service);
	}

	@Test
	public void test02_service_display() {
		for (int i = 1; i < 3; i++) {
			service.display(i).forEach(product -> log.info(product));
		}
	}
	/*
	 * 1 : 신상품
	 * 2 : 베스트상품
	 */

	@Test
	public void test03_service_display_by_brand() {
		service.display_by_brand(1).forEach(product -> log.info(product));
	}

	@Test
	public void test04_display_by_brand_sort() {
		for (int i = 1; i < 5; i++) {
			service.display_by_brand_sort(i, 1).forEach(product -> log.info(product));
		}
	}
	/*
	 * 1 : 브랜드별 신상품
	 * 2 : 브랜드별 베스트 상품
	 * 3 : 브랜드별 가격높은순 정렬
	 * 4 : 브랜드별 가격낮은순 정렬
	 */

	@Test
	public void test05_service_display_by_brand_color() {
		service.display_by_brand_color(1, "white").forEach(product -> log.info(product));
	}

	@Test
	public void test06_service_display_by_brand_size() {
		service.display_by_brand_size(1, "S").forEach(product -> log.info(product));
	}

	@Test
	public void test07_display_product_detail() {
		ProductVO product = service.display_product_detail("TH2C5KTN040N");

		log.info("read product detail : " + product);
	}

}
