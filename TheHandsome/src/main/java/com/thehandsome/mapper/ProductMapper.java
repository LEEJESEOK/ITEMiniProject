package com.thehandsome.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.thehandsome.domain.ProductVO;

public interface ProductMapper {
	
	public ArrayList<ProductVO> display(int mode);
	/*
	 * 1 : 신상품
	 * 2 : 베스트상품
	 */
	
	public ArrayList<ProductVO> display_by_brand(int bno); // 브랜드별 상품 조회
	
	public ArrayList<ProductVO> display_by_brand_sort(@Param("mode")int mode, @Param("bno")int bname);
	/*
	 * 1 : 브랜드별 신상품
	 * 2 : 브랜드별 베스트 상품
	 * 3 : 브랜드별 가격높은순 정렬
	 * 4 : 브랜드별 가격낮은순 정렬
	 */
	
	public ArrayList<ProductVO> display_by_brand_color(@Param("bno")int bno, @Param("ccolorname")String ccolorname); 
	// 브랜드, 색상별 상품 조회
	
	public ArrayList<ProductVO> display_by_brand_size(@Param("bno")int bname, @Param("psize")String psize); 
	// 브랜드, 사이즈별 상품 조회
	
	public ProductVO display_product_detail(String pid); // 상품 상세 조회
	
	public ArrayList<ProductVO> display_product_color(String pid); // 색상 반환
	
	public ArrayList<ProductVO> display_product_size(String pid); // 사이즈 반환
	
	public int qna_total(String pid);

}
