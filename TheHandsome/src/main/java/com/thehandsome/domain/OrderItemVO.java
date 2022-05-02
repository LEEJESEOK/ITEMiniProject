package com.thehandsome.domain;

import lombok.Data;

/**
 * 
 * @author 고동현
 * 주문 관련 VO 작성
 */
@Data
public class OrderItemVO {
	private String oid; //주문번호
	private String pid; //주문한 상품 id
	private String ccolorname; //주문한 상품 색상
	private String ssize; //주문한 상품 사이즈
	private int oamount; //주문한 상품 개수
}