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
	String mid;
	String mpassword;
	String mname;
	String memail;
	String mtel;
	String mzipcode;
	String maddress1;
	String maddress2;
	String mgrade;
	Date mdate;
	int mmileage;
	String menabled;
}
