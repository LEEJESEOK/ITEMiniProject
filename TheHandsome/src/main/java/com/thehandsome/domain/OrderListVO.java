package com.thehandsome.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
/**
 * 
 * @author 고동현
 * 주문리스트 관련 VO
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class OrderListVO {
	private String oid; // 주문리스트가 참조하는 주문번호
	private String mid; // 주문리스트가 참조하는 고객 id
	private int ozipcode; // 우편번호
	private String oaddress1; // 주소
	private String oaddress2; // 상세주소
	private String oreceiver; // 수신인
	private String otel; // 전화번호
	private String omessage; // 요청사항
	private Date odate; // 주문일자
	private int ousedmileage; // 사용 마일리지
	private int opayment; // 주문금액
	private int odiscounted; //할인금액

}