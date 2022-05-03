package com.thehandsome.domain;

import java.util.Date;

import lombok.Data;

/**
 * 
 * @author "LEE JESEOK"
 *
 */
@Data
public class ReviewVO {

	long rno;
	String mid;
	String pid;
	String pcolor;
	String psize;
	Date rdate;
	int rrate;
	String rcontent;
	String rimage;
}
