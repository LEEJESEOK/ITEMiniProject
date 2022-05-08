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

/**
 * 상품 관련 조회 service test
 * @author 고동현
 */
@RunWith(SpringJUnit4ClassRunner.class)
@FixMethodOrder(MethodSorters.NAME_ASCENDING)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ProductServiceImplTest {

	@Autowired
	private ProductService service;
	
	@Test // service 생성 테스트
	public void test01_service() {
		log.info(service);
	}

	@Test // 신상품, 베스트 상품 조회 테스트
	public void test02_display() {
		for (int i = 1; i < 3; i++) {
			service.display(i).forEach(product -> log.info(product));
		}
	}
	/*
	 * 1 : 신상품
	 * 2 : 베스트상품
	 */

	@Test // 브랜드별 모든 상품 조회 테스트
	public void test03_display_by_brand() {
		service.display_by_brand(1).forEach(product -> log.info(product));
	}

	@Test // 브랜드별 해당 조건 만족하는 상품 조회 테스트
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

	@Test // 브랜드별 해당 색상 상품 조회 테스트
	public void test05_display_by_brand_color() {
		service.display_by_brand_color(1, "black").forEach(product -> log.info(product));
	}

	@Test // 브랜드별 해당 사이즈 상품 조회 테스트
	public void test06_display_by_brand_size() {
		service.display_by_brand_size(1, "S").forEach(product -> log.info(product));
	}

	@Test // 해당 상품 상세정보 조회 테스트
	public void test07_display_product_detail() {
		ProductVO product = service.display_product_detail("SY2C1WJS740WM2");

		log.info("read product detail : " + product);
	}
	
	@Test // 브랜드별 상품 고가순 정렬 테스트
	public void test08_display_by_brand_price() {
		service.display_by_brand_price(3, 1).forEach(product -> log.info(product));
	}
	
	@Test // 브랜드별 상품 저가순 정렬 테스트
	public void test09_display_by_brand_price_low() {
		service.display_by_brand_price_low(4, 1).forEach(product -> log.info(product));
	}
	
	@Test // 해당 단일상품 컬러 모두 출력 테스트
	public void test10_display_product_color() {
		service.display_product_color("SY2C1WJS740WM2").forEach(product -> log.info(product));
	}
	
	@Test // 해당 단일상품 사이즈 모두 출력 테스트
	public void test11_display_product_size() {
		service.display_product_size("SY2C1WJS740WM2").forEach(product ->log.info(product)); 
	}
	
	@Test // 상품 대분류에 해당하는 상품 모두 출력
	public void test12_display_product_large() {
		service.display_product_large(1, "여성").forEach(product ->log.info(product)); 
	}
	
	@Test // 상품 대분류, 중분류에 해당하는 상품 모두 출력
	public void test13_display_product_medium() {
		service.display_product_medium(1, "여성", "아우터").forEach(product ->log.info(product)); 
	}
	
	@Test // 상품 대분류, 중분류, 소분류에 해당하는 상품 모두 출력
	public void test14_display_product_small() {
		service.display_product_small(1, "여성", "아우터", "재킷").forEach(product ->log.info(product)); 
	}

}
