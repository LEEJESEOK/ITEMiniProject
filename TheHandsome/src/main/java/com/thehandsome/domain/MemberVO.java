package com.thehandsome.domain;

import java.sql.Date;

import lombok.Data;
@Data
/**
 * 
 * @author "Seungyeon"
 *
 */

public class MemberVO {
	String mid;
	String mpassword;
	String mname;
	String memail;
	String mte;
	String mzipcode;
	String maddress1;
	String maddress2;
	Date mdate;
	int mmileage;
	String menabled;

}
