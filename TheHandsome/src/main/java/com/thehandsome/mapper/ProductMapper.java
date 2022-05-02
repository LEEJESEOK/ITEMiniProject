package com.thehandsome.mapper;

import java.util.ArrayList;

import com.thehandsome.domain.ProductVO;

public interface ProductMapper {
	//제품등록날짜 컬럼, 평점 컬럼 추가
	public ArrayList<ProductVO> read(int mode);
	/*
	 * 1 : 전체상품 조회
	 * 2 : 베스트 상품 조회 => 펑점 기준
	 * 3 : 신상품 조회 => 제품등록날짜 기준
	 * 4 : 높은가격순 조회 => 가격 기준
	 * 5 : 낮은가격순 조회 => 가격 기준
	 */
	
	public ArrayList<ProductVO> read_by_brand(int bno); // 브랜드별 조회
	
	public ArrayList<ProductVO> read_by_color(String ccolorname); // 상품 색상별 조회
	
	// 제품 사이즈 컬럼 추가
	public ArrayList<ProductVO> read_by_size(String size); // 상품 사이즈별 조회
	
	public ProductVO read_product_detail(String pid); // 상품 상세 조회
	

}
