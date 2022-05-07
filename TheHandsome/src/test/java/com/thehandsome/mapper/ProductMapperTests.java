package com.thehandsome.mapper;

import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.MethodSorters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.thehandsome.domain.ProductVO;

import lombok.extern.log4j.Log4j;

/**
 * test
 * 
 * @author 고동현
 * 
 */
@RunWith(SpringJUnit4ClassRunner.class)
@FixMethodOrder(MethodSorters.NAME_ASCENDING)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ProductMapperTests {

	@Autowired
	ProductMapper mapper;

	@Test
	public void test01_mapper() {
		log.info(mapper);
	}

	@Test
	public void test02_display() {
		for (int i = 1; i < 3; i++) {
			mapper.display(i).forEach(product -> log.info(product));
		}
	}
	/*
	 * 1 : 신상품
	 * 2 : 베스트상품
	 */

	@Test
	public void test03_display_by_brand() {
		mapper.display_by_brand(1).forEach(product -> log.info(product));
	}

	@Test
	public void test04_display_by_brand_sort() {
		for (int i = 1; i < 5; i++) {
			mapper.display_by_brand_sort(i, 1).forEach(product -> log.info(product));
		}
	}
	/*
	 * 1 : 브랜드별 신상품
	 * 2 : 브랜드별 베스트 상품
	 * 3 : 브랜드별 가격높은순 정렬
	 * 4 : 브랜드별 가격낮은순 정렬
	 */

	@Test
	public void test05_display_by_brand_color() {
		mapper.display_by_brand_color(1, "white").forEach(product -> log.info(product));
	}

	@Test
	public void test05_display_by_brand_size() {
		mapper.display_by_brand_size(1, "S").forEach(product -> log.info(product));
	}

	@Test
	public void test06_display_product_detail() {
		ProductVO product = mapper.display_product_detail("TH2C5KTN040N");

		log.info("read product detail : " + product);
	}
}
