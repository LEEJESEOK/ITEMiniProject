package com.thehandsome.service;

import java.util.ArrayList;


import com.thehandsome.domain.ProductVO;

public interface ProductService {

	public ArrayList<ProductVO> display(int mode);
	/*
	 * 1 : 신상품
	 * 2 : 베스트상품
	 */
	
	public ArrayList<ProductVO> display_by_brand(String bname); // 브랜드별 상품 조회
	
	public ArrayList<ProductVO> display_by_brand_sort(int mode, String bname);
	/*
	 * 1 : 브랜드별 신상품
	 * 2 : 브랜드별 베스트 상품
	 * 3 : 브랜드별 가격높은순 정렬
	 * 4 : 브랜드별 가격낮은순 정렬
	 */
	
	public ArrayList<ProductVO> display_by_brand_color(String bname, String ccolorname); 
	// 브랜드, 색상별 상품 조회
	
	public ArrayList<ProductVO> display_by_brand_size(String bname, String psize); 
	// 브랜드, 사이즈별 상품 조회
	
	public ProductVO display_product_detail(String pid); // 상품 상세 조회

}
