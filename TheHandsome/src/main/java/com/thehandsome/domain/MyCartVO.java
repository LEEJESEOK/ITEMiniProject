package com.thehandsome.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 장바구니 관련 vo 작성
 * 
 * @author 고동현
 * 
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class MyCartVO {

	private String mid; // cart참조 멤버 id
	private String pid; // cart참조 상품 id
	private String psize; // cart에 담긴 상품 size
	private String pcolor; // cart에 담긴 상품 색상
	private int pamount; // 상품 수량
	private String pname; // 상품이름
	private String bname; // 브랜드이름
	private int pprice; //상품가격
}