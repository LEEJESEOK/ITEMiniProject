package com.thehandsome.domain;

import lombok.Data;

/**
 * 
 * @author 고동
 * 상품관련 VO
 */
@Data
public class ProductVO {
	private String pid; // 상품 id
	private int bno; // 상품 브랜드 number
	private String clarge; // 대분류
	private String cmedium; // 중분류
	private String csmall; // 소분류
	private String pname; // 상품명
	private int pprice; // 상품가격
	private String pdetail; // 상품설명
	private String pseason; // 상품 시즌
}