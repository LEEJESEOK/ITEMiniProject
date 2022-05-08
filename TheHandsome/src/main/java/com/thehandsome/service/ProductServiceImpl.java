package com.thehandsome.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.thehandsome.domain.ProductVO;
import com.thehandsome.mapper.ProductMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor

/**
 * @author 고동현
 * 상품 관련 service 구현
 *
 */
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private ProductMapper mapper;
	
	@Override
	public int qna_total(String pid) {
		return mapper.qna_total(pid);
	}
	@Override
	public ArrayList<ProductVO> display(int mode) { 
		log.info("get list by mode....");
		return mapper.display(mode);
	}
	/*
	 * 1 : 신상품
	 * 2 : 베스트상품
	 */

	@Override
	public ArrayList<ProductVO> display_by_brand(int bno) { // 브랜드별 상품 조회
		log.info("get list by brand....");
		return mapper.display_by_brand(bno);
	}

	@Override
	public ArrayList<ProductVO> display_by_brand_sort(int mode, int bno) {
		log.info("get list by brand using mode....");
		return mapper.display_by_brand_sort(mode, bno);
	}
	/*
	 * 1 : 브랜드별 신상품
	 * 2 : 브랜드별 베스트 상품
	 * 3 : 브랜드별 가격높은순 정렬
	 * 4 : 브랜드별 가격낮은순 정렬
	 */

	@Override
	public ArrayList<ProductVO> display_by_brand_color(int bno, String ccolorname) {// 브랜드, 색상별 상품 조회
		log.info("get list by brand and color....");
		return mapper.display_by_brand_color(bno, ccolorname);
	}

	@Override
	public ArrayList<ProductVO> display_by_brand_size(int bno, String psize) {// 브랜드, 사이즈별 상품 조회
		log.info("get list by brand and size....");
		return mapper.display_by_brand_size(bno, psize);
	}

	@Override
	public ProductVO display_product_detail(String pid) {// 상품 상세 조회
		log.info("get product detail....");
		return mapper.display_product_detail(pid);
	}


	@Override
	public ArrayList<ProductVO> display_product_color(String pid) {//상품 색상
		log.info("get product color ....");
		return mapper.display_product_color(pid);
	}

	@Override
	public ArrayList<ProductVO> display_product_size(String pid) {//상품 사이즈
		log.info("get product size ....");
		return mapper.display_product_size(pid);
	}

	@Override
	public ArrayList<ProductVO> display_product_large(int mode, String category_large) { // 대분류
		log.info("pisplay product large");
		return mapper.display_product_large(mode, category_large);
	}

	@Override
	public ArrayList<ProductVO> display_product_medium(int mode, String category_large, String category_medium) { //중분류
		log.info("pisplay product medium");
		return mapper.display_product_medium(mode, category_large, category_medium);
	}

	@Override
	public ArrayList<ProductVO> display_product_small(int mode, String category_large, String category_medium, String category_small) { //소분류
		log.info("pisplay product small");
		return mapper.display_product_small(mode, category_large, category_medium, category_small);
	}

	@Override
	public ArrayList<ProductVO> display_by_brand_price(int mode, int bno) { // 가격높은순
		log.info("get list by brand using mode....");
		return mapper.display_by_brand_price(mode, bno);
	}

	@Override
	public ArrayList<ProductVO> display_by_brand_price_low(int mode, int bno) { // 가격낮은순
		log.info("get list by brand using mode....");
		return mapper.display_by_brand_price_low(mode, bno);
	}
	

}
