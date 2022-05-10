package com.thehandsome.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 
 * @author "Seungyeon"
 *
 */
@AllArgsConstructor
@NoArgsConstructor
@Data
public class MemberVO {

	String mid;			// Id
	String mpassword;	// 비밀번호
	String mname;		// 이름
	String memail;		// 이메일
	String mtel;		// 전화번호
	String mzipcode;	// 우편번호
	String maddress1;	// 주소
	String maddress2;	// 상세 주소
	String mgrade;		// 회원등급
	Date mdate;			// 가입일
	int mmileage;		// 보유 마일리지
	String menabled;	// 회원상태
}
