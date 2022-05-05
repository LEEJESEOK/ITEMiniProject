package com.thehandsome.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 상품관련 VO
 * 
 * @author 고동
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
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
	private int paveragerate; // 상품 평점
	private Date preleasedate; // 상품 출시일
	private String psize; // 상품 사이즈
	private String ccolorname; // 상품색상
}